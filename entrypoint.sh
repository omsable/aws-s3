#! /bin/sh
set -e

# [TODO] can override bucket

aws s3api --bucket "$BUCKET" $@
