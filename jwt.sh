set -euo pipefail

source scripts/property_utils.sh

SQ_HOME=$1

echo "setting jwt token"
set_property sonar.auth.jwtBase64Hs256Secret "BMkttJKfkRDhrHLygtrOB8BtaDeP5AiCj9Ncz/7j+WA="
