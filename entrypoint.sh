#! /bin/sh
set -e

# https://docs.aws.amazon.com/cli/latest/reference/s3/index.html
res=$(aws s3 $@)

# [TODO] echo details to log

python /output.py "$1" "$res"
