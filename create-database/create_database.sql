--------------------------------------------------------------------------------
--
-- Database creation SQL+ script
--
-- Usage:
-- SQL> @create_database <SIDNAME> <SYS(TEM) password> <Datafile path>
--
-- Modified		Date (YYYY-MM-DD)	Reason
-- lcsontos		2010-03-04		Created and tested
-- lcsontos		2011-06-02		Adopted for Oracle 11gR2
-- lcsontos		2012-08-03		Adopted for Liferay
--
--------------------------------------------------------------------------------

WHENEVER SQLERROR EXIT SQL.SQLCODE FAILURE ROLLBACK
WHENEVER OSERROR  EXIT FAILURE ROLLBACK 

SPOOL create_database_&1..log

prompt ##
prompt ## Creating database server parameter file ...
prompt ##
CREATE SPFILE FROM PFILE;

prompt ##
prompt ## Starting database instance ...
prompt ##
STARTUP NOMOUNT;

TIMING START overall

TIMING START create_db

prompt ##
prompt ## Creating database &1 ...
prompt ##
CREATE DATABASE &1
	USER SYS IDENTIFIED BY &2
	USER SYSTEM IDENTIFIED BY &2
	-- Log files
	LOGFILE
		GROUP 1 ('&3/redo_01.log') SIZE 64M,
		GROUP 2 ('&3/redo_02.log') SIZE 64M,
		GROUP 3 ('&3/redo_03.log') SIZE 64M
	CHARACTER SET AL32UTF8
	NATIONAL CHARACTER SET AL16UTF16
	-- System tablespace
	DATAFILE '&3/system_01.dbf'
		SIZE 32M REUSE AUTOEXTEND ON NEXT 32M MAXSIZE 4096M
		EXTENT MANAGEMENT LOCAL
	-- Sysaux tablespace
	SYSAUX DATAFILE '&3/sysaux_01.dbf'
		SIZE 32M REUSE AUTOEXTEND ON NEXT 32M MAXSIZE 4096M
	-- Default tablespace for non-system users
	DEFAULT TABLESPACE users DATAFILE '&3/users_01.dbf'
		SIZE 32M REUSE AUTOEXTEND ON NEXT 32M MAXSIZE 4096M
	-- Temporary tablespace
	DEFAULT TEMPORARY TABLESPACE temp TEMPFILE  '&3/temp_01.dbf'
		SIZE 32M REUSE AUTOEXTEND ON NEXT 32M  MAXSIZE 4096M
	-- Undo tablespace
	UNDO TABLESPACE undo DATAFILE '&3/undo_01.dbf'
		SIZE 32M REUSE AUTOEXTEND ON NEXT 32M MAXSIZE 4096M;

TIMING STOP create_db

TIMING START catalog.sql
prompt ##
prompt ## Creating data dictionary ...
prompt ##
prompt ### ORACLE_HOME/rdbms/admin/catalog.sql

@?/rdbms/admin/catalog.sql

TIMING STOP catalog.sql

TIMING START catproc.sql
prompt ##
prompt ## Running all scripts required for, or used with PL/SQL ...
prompt ##
prompt ### ORACLE_HOME/rdbms/admin/catproc.sql

@?/rdbms/admin/catproc.sql

TIMING STOP catproc.sql

TIMING START pupbld.sql
prompt ##
prompt ## Creating SQL*Plus PRODUCT_USER_PROFILE tables ...
prompt ##
prompt ### ORACLE_HOME/sqlplus/admin/pupbld.sql

@?/sqlplus/admin/pupbld.sql

TIMING STOP pupbld.sql

TIMING START utlrp.sql
prompt ##
prompt ## Recompiling ...
prompt ##
prompt ### ORACLE_HOME/rdbms/admin/utlrp.sql

@?/rdbms/admin/utlrp.sql

TIMING STOP utlrp.sql

TIMING STOP overall

-- Disable password expiration
ALTER PROFILE DEFAULT LIMIT
	FAILED_LOGIN_ATTEMPTS UNLIMITED
	PASSWORD_LIFE_TIME UNLIMITED;

-- Create role for Liferay
CREATE ROLE LPORTAL;

GRANT CONNECT TO LPORTAL;
GRANT RESOURCE TO LPORTAL;
GRANT SELECT_CATALOG_ROLE TO LPORTAL;

-- Fix DATA_PUMP_DIR
CREATE OR REPLACE DIRECTORY data_pump_dir AS '&3/dump';
