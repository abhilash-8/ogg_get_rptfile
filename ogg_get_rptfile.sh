#!/bin/bash
############################################################################################
#Script Name    : ogg_get_rptfile.sh
#Description    : Downloads all the current Report Files for an OCI OGG Deployment
#Args           : ogg_get_rptfile.sh <DEP_NAME> <REPEXT_NAME> <REPEXT>
#Author         : Abhilash Kumar Bhattaram
#Email          : abhilash8@gmail.com
#GitHb          : https://github.com/abhilash-8/
############################################################################################
if [ -z "$3" ]
then
        echo " "
        echo "Usage is ogg_get_rptfile.sh <DEP_NAME> <REPEXT_NAME> <REPEXT>"
        echo " "
        exit 0
fi

OGG=$1;echo $OGG
REP_NAME=$2; echo $REP_NAME
RPT_TYPE=$3; echo $RPT_TYPE
TMPDIR=/tmp
if [ $1 == "DEP1" ]
then
        DEP_URL="https://aaaaaaaaaaa.deployment.goldengate.ap-mumbai-1.oci.oraclecloud.com"
        if [ $3 == "REP" ]
        then
                RPT_TYPE_NAME="replicats";echo $RPT_TYPE_NAME
        elif [ $3 == "EXT" ]
        then
                RPT_TYPE_NAME="extracts"; echo $RPT_TYPE_NAME
        else
                echo ""
                echo Invalid Deployment , Usage is ./ogg_get_rptfile.sh DEP_NAME NAME TYPE ;
                echo ""
                exit 0;
        fi
        REP_URL9=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}9.rpt
        REP_URL8=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}8.rpt
        REP_URL7=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}7.rpt
        REP_URL6=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}6.rpt
        REP_URL5=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}5.rpt
        REP_URL4=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}4.rpt
        REP_URL3=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}3.rpt
        REP_URL2=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}2.rpt
        REP_URL1=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}1.rpt
        REP_URL=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}.rpt


elif [ $1 == "DEP2" ]
then
        DEP_URL="https://aaaaaaaaaaa.deployment.goldengate.ap-mumbai-1.oci.oraclecloud.com"
        if [ $3 == "REP" ]
        then
                RPT_TYPE_NAME="replicats";echo $RPT_TYPE_NAME
        elif [ $3 == "EXT" ]
        then
                RPT_TYPE_NAME="extracts"; echo $RPT_TYPE_NAME
        else
                echo ""
                echo Invalid Deployment , Usage is ./ogg_get_rptfile.sh DEP_NAME NAME TYPE ;
                echo ""
                exit 0;
        fi
        REP_URL9=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}9.rpt
        REP_URL8=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}8.rpt
        REP_URL7=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}7.rpt
        REP_URL6=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}6.rpt
        REP_URL5=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}5.rpt
        REP_URL4=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}4.rpt
        REP_URL3=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}3.rpt
        REP_URL2=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}2.rpt
        REP_URL1=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}1.rpt
        REP_URL=${DEP_URL}/services/v2/${RPT_TYPE_NAME}/${REP_NAME}/info/reports/${REP_NAME}.rpt

else
        echo Invalid Deployment , Usage is ./ogg_get_rptfile.sh DEP_NAME NAME TYPE
fi


#REP_URL=${DEP_URL}/services/v2/replicats/${REP_NAME}/info/reports/${REP_NAME}.rpt
echo $REP_URL
RPT_NAME=${TMPDIR}/${REP_NAME}-rpt.log;echo $RPT_NAME
cat ${TMPDIR}/${REP_NAME}-rpt.json > ${TMPDIR}/${REP_NAME}-rpt.log


curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL | python -m json.tool > /tmp/rptfile.json

curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL9 | python -m json.tool > $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL8 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL7 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL6 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL5 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL4 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL3 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL2 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL1 | python -m json.tool >> $RPT_NAME
curl -n -H "Content-Type: application/json" -H "Accept: application/json" -X GET $REP_URL | python -m json.tool >> $RPT_NAME

echo Report file downloaded at $RPT_NAME

