#!/bin/bash

set -xeuf -o pipefail

ROOT="$( readlink -f "$( dirname "${BASH_SOURCE[0]}" )" )"
DOCKER_FILE="${ROOT}/docker-compose.yaml"
DATA_DIR="${ROOT}/data"
SCRIPTS_DIR="${ROOT}/scripts"

cp -f  docker-compose-template.yaml docker-compose.yaml
sed -i "s|<path-to-data-dir>|${DATA_DIR}|g" docker-compose.yaml
sed -i "s|<path-to-scripts-dir>|${SCRIPTS_DIR}|g" docker-compose.yaml

docker-compose --file "$DOCKER_FILE" up --detach --remove-orphans
