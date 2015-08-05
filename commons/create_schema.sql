SET DEFINE ON
SET SERVEROUTPUT ON

declare
	v_sql varchar2(100);
begin
	dbms_output.enable(327680);

	for s in (
		select sid, serial# from v$session s
		where s.username = '&1'
	)
	loop
		begin
			v_sql := 'ALTER SYSTEM DISCONNECT SESSION ''' || s.sid || ',' || s.serial# || ''' IMMEDIATE';

			dbms_output.put(v_sql);
			execute immediate v_sql;
			dbms_output.put_line(' ... OK');
		exception
			when others then
				dbms_output.put_line(' ... ERROR: ' || sqlerrm);
		end;
	end loop;
end;
/

DROP USER &1 CASCADE;

CREATE USER &1 IDENTIFIED BY password
DEFAULT TABLESPACE &2
TEMPORARY TABLESPACE &3;

GRANT LPORTAL TO &1;
GRANT READ, WRITE ON DIRECTORY data_pump_dir TO &1;

ALTER USER &1 QUOTA UNLIMITED ON &2;
ALTER USER &1 QUOTA UNLIMITED ON users;

EXIT
