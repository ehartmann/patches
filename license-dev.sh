#!/bin/bash
###############################
# copies the DEV sonar-license plugin jar to the extension directory
###############################

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

if [ "${SONARQUBE_DEV+x}" ]; then
    DEV=$SONARQUBE_DEV
else
    DEV=~/DEV
fi

PLUGIN_PATH=$DEV/sonar-license/sonar-dev-license-plugin/target/sonar-dev-license-plugin-3.3-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins
cp -v "$PLUGIN_PATH" "$EXT_DIR"/

