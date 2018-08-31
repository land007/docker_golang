FROM land007/ubuntu:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN cd /tmp && wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz && rm -f go1.10.3.linux-amd64.tar.gz
#ARM https://dl.google.com/go/go1.11.linux-arm64.tar.gz

ENV GOROOT=/usr/local/go
RUN mkdir /usr/local/go/path
ENV GOPATH=/usr/local/go/path
ENV PATH=$PATH:$GOPATH/bin:$GOROOT/bin
RUN echo 'export GOROOT=/usr/local/go' >> /etc/profile && echo 'export GOPATH=/usr/local/go/path' >> /etc/profile && echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> /etc/profile


#docker stop golang ; docker rm golang ; docker run -it --privileged --name golang land007/golang:latest
