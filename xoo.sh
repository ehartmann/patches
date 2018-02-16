#!/bin/bash
#
# copy the sonar-xoo plugin jar to the extension directory

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

if [ "${SONARQUBE_DEV+x}" ]; then
    DEV=$SONARQUBE_DEV
else
    DEV=~/DEV
fi

PLUGIN_PATH=$DEV/sonarqube/plugins/sonar-xoo-plugin/target/sonar-xoo-plugin-7.1-SNAPSHOT.jar
EXT_DIR=$SQ_HOME/extensions/plugins
cp -v "$PLUGIN_PATH" "$EXT_DIR"/

