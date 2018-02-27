FROM          alpine:3.7

ADD           install.sh install.sh
ADD           entrypoint.sh entrypoint.sh
ADD           output.py output.py
RUN           sh install.sh && rm install.sh

WORKDIR       /s3

ENTRYPOINT   ["/entrypoint.sh"]
