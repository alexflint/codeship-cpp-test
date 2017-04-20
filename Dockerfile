# base on latest ruby base image
FROM gcc:6.3

# update and install dependencies
RUN apt-get update -qq
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libpq-dev nodejs apt-utils

# setup app folders
RUN mkdir /zippy
WORKDIR /zippy

ADD . /zippy
