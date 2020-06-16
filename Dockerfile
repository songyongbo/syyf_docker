FROM centos:7
MAINTAINER songyongbo <songyongbo@syyfbooks.com>
# RUN yum install -y vim
RUN mkdir -p /go
RUN mkdir -p /run
WORKDIR /run
# COPY micro /go
COPY start.sh /run
RUN chmod +x /run/start.sh
EXPOSE 8080
ENTRYPOINT /run/start.sh