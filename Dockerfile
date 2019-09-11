FROM python:3.7-alpine

LABEL "com.github.actions.name"="S3 CopyPaste"
LABEL "com.github.actions.description"="Sync a file to an AWS S3 repository"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.2.0"
LABEL repository="https://github.com/tpaschalis/s3-cp-action"
LABEL homepage="https://tpaschalis.github.io"
LABEL maintainer="Paschalis Tsilias <paschalist0@gmail.com>"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.16.232'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
