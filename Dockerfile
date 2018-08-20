FROM land007/debian:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN cd /tmp && wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz

ENV GOROOT=/usr/local/go
RUN mkdir /usr/local/go/path
ENV GOPATH=/usr/local/go/path
ENV PATH=$PATH:$GOPATH:$GOROOT/bin

#docker stop golang ; docker rm golang ; docker run -it --privileged --name golang land007/golang:latest
