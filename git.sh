#!/bin/bash
#
# copy the sonar-scm-git plugin jar to the extension directory
#

set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

if [ "${SONARQUBE_DEV+x}" ]; then
    DEV=$SONARQUBE_DEV
else
    DEV=~/DEV
fi

match_one() {
    local pattern=$1
    local value v

    value=($pattern)
    if [ ${#value[@]} != 1 ]; then
        echo "error: ambiguous pattern '$pattern', too many matches:"
        for v in "${value[@]}"; do
            echo "  $v"
        done
        return 1
    fi

    if [ "$value" != "$pattern" ]; then
        echo "$value"
    else
        dirname "$value"
    fi
}

PLUGIN_PATH=$(match_one "$DEV/sonar-scm-git/sonar-scm-git-plugin/target/sonar-scm-git-plugin-*-SNAPSHOT.jar")
EXT_PATH=$(match_one "$SQ_HOME/extensions/plugins/sonar-scm-git-plugin-*.jar")
cp -v "$PLUGIN_PATH" "$EXT_PATH"

