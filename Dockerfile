FROM ubuntu:18.04
ENV GOROOT=/usr/local/go
ENV GOPATH=/go
ENV PATH=$PATH:$GOPATH/bin:$GOROOT/bin
RUN apt-get update \
    && apt-get install -y wget \
    && apt-get install -y npm \
    && npm install -g serverless \
    && apt-get install -y git \
    && wget https://dl.google.com/go/go1.14.linux-amd64.tar.gz \
    && tar -xvf go1.14.linux-amd64.tar.gz \
    && mv go /usr/local \
    && go get github.com/golang/dep/cmd/dep \