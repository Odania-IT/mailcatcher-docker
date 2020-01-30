FROM ruby:latest
MAINTAINER Mike Petersen <mike@odania-it.de>

RUN apt-get update \
	&& apt-get install -y sqlite3 libsqlite3-dev \
	&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install mailcatcher

EXPOSE 2525 1080
CMD ["mailcatcher", "-f", "--smtp-port", "2525", "--smtp-ip", "0.0.0.0", "--http-ip", "0.0.0.0"]

