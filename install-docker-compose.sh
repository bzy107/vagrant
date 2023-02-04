#!/bin/bash

# bargeの設定
# sudo pkg install vim
# # sudo pkg install git
# sudo pkg install git -e BR2_PACKAGE_OPENSSL=y -e BR2_PACKAGE_LIBCURL=y
# git config --global http.sslCAinfo /etc/ssl/certs/ca-certificates.crt

# sudo pkg install make

# # curlインストール bargee最新にしたらできなかった
# # sudo pkg install libcurl -e BR2_PACKAGE_OPENSSL=y -e BR2_PACKAGE_CURL=y
# # export CURL_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt


# # bargeのdockerを最新化
# sudo /etc/init.d/docker restart latest

# sudo wget "https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-$(uname -s)-$(uname -m)" -O /usr/bin/docker-compose
# sudo chmod +x /usr/bin/docker-compose

# ubuntuの設定
sudo apt update

# makeのインストール
sudo apt install make

# dockerのインストール
# sudo apt install docker.io
sudo snap install docker

# Docker Compose install
# 以下ドキュメントからコマンド抜粋
# https://docs.docker.com/compose/install/compose-plugin/

# DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
DOCKER_CONFIG='/home/vagrant/.docker'
DOCKER_VERSION='v2.15.0'
# https://github.com/docker/compose/releases
# 最新versionはここから確認

sudo mkdir -p $DOCKER_CONFIG/cli-plugins
sudo wget https://github.com/docker/compose/releases/download/$DOCKER_VERSION/docker-compose-$(uname -s)-$(uname -m) -O $DOCKER_CONFIG/cli-plugins/docker-compose
sudo chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose


