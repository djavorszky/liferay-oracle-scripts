SPOOL create_repositories.log

DEFINE tbs=&1

-- Create Liferay tablespaces
@@ ../commons/create_tablespace.sql lportal_5103 &tbs
@@ ../commons/create_tablespace.sql lportal_5104 &tbs
@@ ../commons/create_tablespace.sql lportal_5105 &tbs
@@ ../commons/create_tablespace.sql lportal_5106 &tbs
@@ ../commons/create_tablespace.sql lportal_5107 &tbs
@@ ../commons/create_tablespace.sql lportal_5108 &tbs
@@ ../commons/create_tablespace.sql lportal_5204 &tbs
@@ ../commons/create_tablespace.sql lportal_5205 &tbs
@@ ../commons/create_tablespace.sql lportal_5206 &tbs
@@ ../commons/create_tablespace.sql lportal_5207 &tbs
@@ ../commons/create_tablespace.sql lportal_5208 &tbs
@@ ../commons/create_tablespace.sql lportal_5209 &tbs
@@ ../commons/create_tablespace.sql lportal_6010 &tbs
@@ ../commons/create_tablespace.sql lportal_6011 &tbs
@@ ../commons/create_tablespace.sql lportal_6012 &tbs
@@ ../commons/create_tablespace.sql lportal_6110 &tbs
@@ ../commons/create_tablespace.sql lportal_6120 &tbs
@@ ../commons/create_tablespace.sql lportal_trunk &tbs

-- Create Liferay schemas
@@ ../commons/create_schema.sql lportal_5103 lportal_5103 temp
@@ ../commons/create_schema.sql lportal_5104 lportal_5104 temp
@@ ../commons/create_schema.sql lportal_5105 lportal_5105 temp
@@ ../commons/create_schema.sql lportal_5106 lportal_5106 temp
@@ ../commons/create_schema.sql lportal_5107 lportal_5107 temp
@@ ../commons/create_schema.sql lportal_5108 lportal_5108 temp
@@ ../commons/create_schema.sql lportal_5204 lportal_5204 temp
@@ ../commons/create_schema.sql lportal_5205 lportal_5205 temp
@@ ../commons/create_schema.sql lportal_5206 lportal_5206 temp
@@ ../commons/create_schema.sql lportal_5207 lportal_5207 temp
@@ ../commons/create_schema.sql lportal_5208 lportal_5208 temp
@@ ../commons/create_schema.sql lportal_5209 lportal_5209 temp
@@ ../commons/create_schema.sql lportal_6010 lportal_6010 temp
@@ ../commons/create_schema.sql lportal_6011 lportal_6011 temp
@@ ../commons/create_schema.sql lportal_6012 lportal_6012 temp
@@ ../commons/create_schema.sql lportal_6110 lportal_6110 temp
@@ ../commons/create_schema.sql lportal_6120 lportal_6120 temp
@@ ../commons/create_schema.sql lportal_trunk lportal_trunk temp

SPOOL OFF

SET DEFINE OFF

SPOOL liferay-portal-sql-5.1.3-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5103;
@@ liferay-portal-sql-5.1.3-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.1.4-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5104;
@@ liferay-portal-sql-5.1.4-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.1.5-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5105;
@@ liferay-portal-sql-5.1.5-oracle.sql
SPOOL

SPOOL liferay-portal-sql-5.1.6-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5106;
@@ liferay-portal-sql-5.1.6-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.1-ee-sp4-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5107;
@@ liferay-portal-sql-5.1-ee-sp4-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.1-ee-sp5-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5108;
@@ liferay-portal-sql-5.1-ee-sp5-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.2.4-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5204;
@@ liferay-portal-sql-5.2.4-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.2-ee-sp1-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5205;
@@ liferay-portal-sql-5.2-ee-sp1-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.2-ee-sp2-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5206;
@@ liferay-portal-sql-5.2-ee-sp2-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.2-ee-sp3-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5207;
@@ liferay-portal-sql-5.2-ee-sp3-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-5.2-ee-sp5-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_5208;
@@ liferay-portal-sql-5.2-ee-sp5-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-6.0-ee-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_6010;
@@ liferay-portal-sql-6.0-ee-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-6.0-ee-sp1-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_6011;
@@ liferay-portal-sql-6.0-ee-sp1-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-6.0-ee-sp2-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_6012;
@@ liferay-portal-sql-6.0-ee-sp2-oracle.sql
SPOOL OFF

SPOOL liferay-portal-sql-6.1.10-ee-ga1-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_6110;
@@ liferay-portal-sql-6.1.10-ee-ga1-oracle.sql
SPOOl OFF

SPOOL liferay-portal-sql-6.1.20-ee-ga2-oracle.log
ALTER SESSION SET CURRENT_SCHEMA = LPORTAL_6120;
@@ liferay-portal-sql-6.1.20-ee-ga2-oracle.sql
SPOOL OFF

SET DEFINE ON
