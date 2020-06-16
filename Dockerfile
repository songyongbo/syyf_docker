FROM centos:7
MAINTAINER songyongbo <songyongbo@syyfbooks.com>
# RUN yum install -y vim
RUN mkdir -p /go
WORKDIR /go
# COPY micro /go
COPY start.sh /go
RUN chmod +x /go/start.sh
EXPOSE 8080
ENTRYPOINT /go/start.sh