# ogg_get_rptfile
Get Deployment Files for OCI OGG Deplpyments 

# Understanding the file ogg_get_rptfile.sh

OCI Provides Oracle Goolden Gate Deployments and this will be useful to download all the report files associated to a Deployment 
The File extensively uses curl API's

If you are new to curl , this will be a good pooint to start with 
https://curl.se/

The Below Link is the Oracle REST API's for Oracle Golden Gate
https://docs.oracle.com/goldengate/c1230/gg-winux/OGGRA/index.html

# Usage of the file 

Usage is $ ./ogg_get_rptfile.sh <DEP_NAME> <REPEXT_NAME> <REPEXT>

DEP_NAME    - Refers to the Deployment Name ( The script uses 2 Deployments DEP1 and DEP2 ) , change it as you need
REPEXT_NAME - Refers to the Replicat or Extract Name being used 
REPEXT      - Refers is the name is either an extract or Replicat

# Pre-requisites 
The availablity of the .netrc file for curl Authentication is needed 

# Example

-- Ensure you have your .netrc set up 
$ cat .netrc
 
machine         aaaaaaaaaaa.deployment.goldengate.ap-mumbai-1.oci.oraclecloud.com login           apiuser  password        putyourpasshere123#

-- Getting all the report files for a Replicat
 
 $ ./ogg_get_rptfile.sh DEP1 MYREP REP

-- Getting all the report files for a Extract

$ ./ogg_get_rptfile.sh DEP1 MYREP REP

