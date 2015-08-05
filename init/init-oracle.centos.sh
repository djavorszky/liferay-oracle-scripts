#!/bin/sh
# chkconfig: 3 96 10
# description: Oracle auto start-stop script.
#
# Set ORACLE_HOME to be equivalent to the $ORACLE_HOME
# from which you wish to execute dbstart and dbshut;
#
# Set ORACLE_OWNER to the user id of the owner of the 
# Oracle database in ORACLE_HOME.

ORACLE_HOSTNAME=localhost
ORACLE_BASE=/opt/oracle
TNS_ADMIN=$ORACLE_BASE/network/admin

ORACLE_HOME=$ORACLE_BASE/product/rdbms112
ORACLE_OWNER=oracle
ORACLE_UNQNAME=LPISSUES
 
if [ ! -f $ORACLE_HOME/bin/dbstart -o ! -f $ORACLE_HOME/bin/dbstop ]
then
    echo "Oracle startup: cannot start"
    exit
fi

case "$1" in
    'start')
        # Start the Oracle databases:
        # The following command assumes that the oracle login 
        # will not prompt the user for any values
        su - $ORACLE_OWNER -c "env ORACLE_UNQNAME=${ORACLE_UNQNAME} ORACLE_HOSTNAME=${ORACLE_HOSTNAME} TNS_ADMIN=${TNS_ADMIN} ${ORACLE_HOME}/bin/dbstart $ORACLE_HOME"
        su - $ORACLE_OWNER -c "env ORACLE_UNQNAME=${ORACLE_UNQNAME} ORACLE_HOSTNAME=${ORACLE_HOSTNAME} TNS_ADMIN=${TNS_ADMIN} ${ORACLE_HOME}/bin/emctl start dbconsole"
        touch /var/lock/subsys/oracle
#       sleep 5
        ;;
    'stop')
        # Stop the Oracle databases:
        # The following command assumes that the oracle login 
        # will not prompt the user for any values
        su - $ORACLE_OWNER -c "env ORACLE_UNQNAME=${ORACLE_UNQNAME} ORACLE_HOSTNAME=${ORACLE_HOSTNAME} TNS_ADMIN=${TNS_ADMIN} ${ORACLE_HOME}/bin/dbshut $ORACLE_HOME"
        su - $ORACLE_OWNER -c "env ORACLE_UNQNAME=${ORACLE_UNQNAME} ORACLE_HOSTNAME=${ORACLE_HOSTNAME} TNS_ADMIN=${TNS_ADMIN} ${ORACLE_HOME}/bin/emctl stop dbconsole"
        rm -f /var/lock/subsys/oracle
        ;;
esac
