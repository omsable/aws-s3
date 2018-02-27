#! /bin/sh
set -e

# install awscli
apk update
apk add --no-cache bash py-pip py-setuptools ca-certificates openssl

pip install --upgrade pip
pip install awscli

rm -rf /var/cache/apk/*
