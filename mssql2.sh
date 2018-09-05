#!/bin/bash
###############################
# configure SQ to use MsSQL
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1
PROPERTY_FILE=$SQ_HOME/conf/sonar.properties

echo "using MsSQL"
set_property sonar.jdbc.username sonarqube $PROPERTY_FILE
set_property sonar.jdbc.password sonarqube!1 $PROPERTY_FILE
set_property sonar.jdbc.url "jdbc:sqlserver://localhost;databaseName=sonarqube2" $PROPERTY_FILE

