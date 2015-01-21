FROM ubuntu:14.04
MAINTAINER Mike Petersen "mike@odania-it.de"

# Set correct environment variables.
ENV HOME /root

RUN apt-get update
RUN apt-get install -y ruby-dev rubygems-integration supervisor sqlite3 libsqlite3-dev build-essential

RUN gem install mailcatcher --no-ri --no-rdoc

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 2525 1080
CMD ["/usr/bin/supervisord"]

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
