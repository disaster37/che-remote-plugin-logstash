FROM eclipse/che-theia-endpoint-runtime:latest

MAINTAINER Sebastien LANGOUREAUX <linuxworkgroup@hotmail.com>

ARG http_proxy
ARG https_proxy

ENV \
    USER=theia \
    GROUP=theia \
    USER_ID=1724 \
    GROUP_ID=1724


# Create default user for che
RUN \
    addgroup -g ${GROUP_ID} ${GROUP} &&\
    adduser -s /bin/sh -G ${GROUP} -D -u ${USER_ID} ${USER}

WORKDIR /projects
