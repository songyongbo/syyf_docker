FROM centos:7
MAINTAINER songyongbo <songyongbo@syyfbooks.com>
# RUN yum install -y vim
RUN mkdir -p /go
RUN mkdir -p /rungo
WORKDIR /rungo
#COPY micro /go
COPY start.sh /rungo
# RUN chmod +x /go/micro
RUN chmod +x /rungo/start.sh
EXPOSE 8080
ENTRYPOINT /rungo/start.sh