# ogg_get_rptfile.sh
This file basicallly "gets" Deployment Files for OCI OGG ( Oracle Golden Gate ) Deplpyments Replicats or Extracts

# Why to use ogg_get_rptfile.sh

Very often as an OGG Administrator you will have to handle with a lot of OGG Issues ,
such as process abending , lag in extracts or replicats , the navigation of Web UI OGG Deployment will be a tedious task ,
I have created this utility to get all the report files downloaded. 

This is also a handy utility when you need to get all the report log files for analysis or uploading to MOS SR's


# Understanding the file ogg_get_rptfile.sh

OCI Provides Oracle Goolden Gate Deployments and this will be useful to download all the report files associated to a Deployment 
The File extensively uses curl API's

If you are new to curl , this will be a good pooint to start with 
https://curl.se/

The Below Link is the Oracle REST API's for Oracle Golden Gate ,
this will help get a good understanding on how REST API's are used for OCI OGG Administration Tasks

https://docs.oracle.com/goldengate/c1230/gg-winux/OGGRA/index.html

# Usage of the file 

Usage is $ ./ogg_get_rptfile.sh <DEP_NAME> <REPEXT_NAME> <REPEXT>

DEP_NAME    - Refers to the Deployment Name ( The script uses 2 Deployments DEP1 and DEP2 ) , change it as you need
REPEXT_NAME - Refers to the Replicat or Extract Name being used 
REPEXT      - Refers is the name is either an extract or Replicat

# Pre-requisites 
1) The availablity of the .netrc file for curl Authentication is needed 
2) jq is needed for JSON parsing
3) Python 2.7.5 or higher (preferably) to use json.tool

OGG Deployment splits the report files into 9 parts for some reason , 
this script merges all the report files into a single file which helps in my investigation.

# Example

-- Ensure you have your .netrc set up 
$ cat .netrc
 
machine         aaaaaaaaaaa.deployment.goldengate.ap-mumbai-1.oci.oraclecloud.com login           apiuser  password        putyourpasshere123#

-- Getting all the report files for a Replicat
 
 $ ./ogg_get_rptfile.sh DEP1 MYREP REP

-- Getting all the report files for a Extract

$ ./ogg_get_rptfile.sh DEP1 MYREP REP

