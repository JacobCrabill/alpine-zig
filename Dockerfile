FROM alpine:latest
ARG ZIG_VERSION=0.14.1

WORKDIR /root

RUN apk update && apk add --no-cache bash curl wget git

RUN curl https://raw.githubusercontent.com/tristanisham/zvm/master/install.sh | bash

ENV PATH=${PATH}:/root/.zvm/self:/root/.zvm/bin

RUN zvm i ${ZIG_VERSION}
