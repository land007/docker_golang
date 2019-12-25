FROM land007/ubuntu-build:latest

MAINTAINER Yiqiu Jia <yiqiujia@hotmail.com>

RUN cd /tmp && wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz && tar -C /usr/local -xzf go1.13.5.linux-amd64.tar.gz && rm -f go1.13.5.linux-amd64.tar.gz && \
#ARM https://dl.google.com/go/go1.11.linux-arm64.tar.gz
	apt-get update && apt-get install -y graphviz && apt-get clean

RUN mkdir /usr/local/go/path
ENV GOROOT=/usr/local/go \
	GOPATH=/usr/local/go/path \
	PATH=$PATH:/usr/local/go/bin:/usr/local/go/path/bin
RUN echo 'export GOROOT=/usr/local/go' >> /etc/profile && \
	echo 'export GOPATH=/usr/local/go/path' >> /etc/profile && \
	echo 'export PATH=$PATH:$GOPATH/bin:$GOROOT/bin' >> /etc/profile && \
	echo $(date "+%Y-%m-%d_%H:%M:%S") >> /.image_times && \
	echo $(date "+%Y-%m-%d_%H:%M:%S") > /.image_time && \
	echo "land007/golang" >> /.image_names && \
	echo "land007/golang" > /.image_name

#docker stop golang ; docker rm golang ; docker run -it --privileged --name golang land007/golang:latest
