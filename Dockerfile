# MongoDB
# VERSION               0.1

FROM      ubuntu:14.04
MAINTAINER Paul Sore <paul.sore@gmail.com>

# import MongoDB public key, add its apt repository and update
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
RUN apt-get update

# install mongodb, create /data/db
RUN apt-get install -y mongodb-org
RUN mkdir -p /data/db

# Define mountable directories.
VOLUME ["/data"]
# Define working directory.
# Mount with `-v <data-dir>/db:/data/db`
WORKDIR /data

# start mongo service
CMD ["mongod"]

# expose service port
EXPOSE 27017
