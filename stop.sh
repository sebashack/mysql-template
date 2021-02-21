#!/bin/bash

set -xeuf -o pipefail

ROOT="$( readlink -f "$( dirname "${BASH_SOURCE[0]}" )" )"
DOCKER_FILE="${ROOT}/docker-compose.yaml"

docker-compose --file "$DOCKER_FILE" down --remove-orphans
