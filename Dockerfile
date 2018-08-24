FROM land007/ubuntu:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN cd /tmp && wget https://dl.google.com/go/go1.10.3.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.10.3.linux-amd64.tar.gz && rm -f go1.10.3.linux-amd64.tar.gz

ENV GOROOT=/usr/local/go
RUN mkdir /usr/local/go/path
ENV GOPATH=/usr/local/go/path
ENV PATH=$PATH:$GOPATH/bin:$GOROOT/bin
RUN echo '\nexport GOROOT=/usr/local/go\nexport GOPATH=/usr/local/go/path\nexport PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> /etc/profile


#docker stop golang ; docker rm golang ; docker run -it --privileged --name golang land007/golang:latest
