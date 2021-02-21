#!/bin/bash

set -eo pipefail

# Install Docker
if ! type "docker" > /dev/null; then
    sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | ${SUDO} apt-key add -

    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

    sudo apt update

    sudo apt-cache policy docker-ce

    sudo apt install -y docker-ce
else
    echo 'docker already installed'
fi

#Install Docker Compose
if ! type "docker-compose" > /dev/null; then
    sudo curl -L https://github.com/docker/compose/releases/download/1.28.4/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
else
    echo 'docker-compose already installed'
fi
