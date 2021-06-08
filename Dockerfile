FROM docker.io/ruby:3

LABEL description="Simple Package Container for CICD"
LABEL MAINTAINER "Infralovers Team <team@infralovers.com>"

RUN apt-get update -q \
    && apt-get install -y rpm \
    && rm -rf /var/lib/apt/lists/*

RUN gem install fpm