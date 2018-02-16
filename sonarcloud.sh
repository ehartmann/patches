set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

set_property sonar.sonarcloud.enabled true $SQ_HOME/conf/sonar.properties
