FROM golang:1.14.7-buster

ARG VERSION=0.3.1

RUN apt update
RUN apt install -y libzmq3-dev libsodium-dev libczmq-dev

RUN pwd
WORKDIR /
RUN wget https://github.com/bahadrix/CardinalityCube/archive/v${VERSION}.tar.gz
RUN tar -xzvf v${VERSION}.tar.gz
WORKDIR /CardinalityCube-${VERSION}

RUN ls

RUN make install-deps
RUN make build

RUN cp build/* /usr/bin/
RUN make clean
RUN rm -rf * 

EXPOSE 1994
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
