#!/usr/bin/bash
##########################################################################
##
## Database creation shell script
##
## Usage:
## $ bash create_database.sh \
##	<SIDNAME> <SYS(TEM) password> \
##	<Datafile path> <init.ora path>
##
## Modified		Date (YYYY-MM-DD)	Reason
## lcsontos		2010-03-04		Created and tested
## lcsontos		2011-06-02		Adopted for 11gR2
##
##########################################################################

# Check environment variables
if [ -z "${ORACLE_HOME}" -o -z "${ORACLE_BASE}" ]
then
	echo "ORACLE_HOME or ORACLE_BASE has not been set!"

	exit 1
fi

# Check supplied parameters
if [ $# -lt 4 ]
then
	echo "Usage: ${0} SIDNAME PASSWORD DATAFILE_PATH"
	echo "Example 1: ${0} PORTAL qwer1234 +ORADATA/PORTAL/oradata"
	echo "Example 2: ${0} PORTAL qwer1234 /data/oradata/PORTAL"

	exit 1
fi

PATH=/bin:/usr/bin:/usr/local/bin:$ORACLE_HOME/bin
ORACLE_SID=$1
ORAPWFILE="${ORACLE_HOME}/dbs/orapw${ORACLE_SID}"

# SYS(TEM) passowrd
ORAPW=$2

# Datafile path
ORADF_PATH=$3
_ORADF_PATH=`echo $ORADF_PATH | sed 's/\//\\\\\//g'`

# ORACLE base path
_ORACLE_BASE=`echo $ORACLE_BASE | sed 's/\//\\\\\//g'`

# Create password file
orapwd file=$ORAPWFILE password=$ORAPW force=y

# Create parameter file
INITORA="${ORACLE_HOME}/dbs/init${ORACLE_SID}.ora"
_INITORA1=`mktemp`
_INITORA2=`mktemp`

sed "s/#ORACLE_BASE#/${_ORACLE_BASE}/g" $4 > $_INITORA1
sed "s/#SIDNAME#/${ORACLE_SID}/g"   $_INITORA1 > $_INITORA2
sed "s/#DF_PATH#/${_ORADF_PATH}/g"   $_INITORA2 > $INITORA

rm -f $_INITORA1
rm -f $_INITORA2

# Create directories
mkdir -p $ORADF_PATH
mkdir -p $ORADF_PATH/dump
mkdir -p $ORACLE_BASE/admin/$ORACLE_SID/adump
mkdir -p $ORACLE_BASE/admin/$ORACLE_SID/bdump
mkdir -p $ORACLE_BASE/admin/$ORACLE_SID/cdump
mkdir -p $ORACLE_BASE/admin/$ORACLE_SID/udump
mkdir -p $ORACLE_BASE/admin/$ORACLE_SID/scripts

# Invoke database creation script
export ORACLE_SID

echo "@create_database.sql ${ORACLE_SID} ${ORAPW} ${ORADF_PATH}" \
	| sqlplus -S / as sysdba

LOGFILE="create_database_${ORACLE_SID}.log"

cp $INITORA $ORACLE_BASE/admin/$ORACLE_SID/scripts
cp $LOGFILE $ORACLE_BASE/admin/$ORACLE_SID/scripts
