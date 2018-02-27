FROM          alpine:3.7

ENV           S3CMD_VERSION 2.0.1

ADD           install.sh install.sh
ADD           entrypoint.sh entrypoint.sh
RUN           sh install.sh && rm install.sh

WORKDIR       /s3

ENTRYPOINT   ["/entrypoint.sh"]
