FROM golang:alpine

MAINTAINER Michael Bisbjerg <michael@mbwarez.dk>

# Install git
# wallet, p2p, and rpc, followed by testnet
EXPOSE 8332 8333 8334 18332 18333 18334

# Prepare environment
RUN mkdir /root/.btcd && mkdir /root/.btcctl

RUN apk update && \
    apk add git

# Grab and install the latest version of btcd and it's dependencies.
RUN go get github.com/btcsuite/btcd/...

# Generate an automatic RPC conf.
COPY base.conf /root/.btcd/btcd.conf
COPY entry.sh /root/entry.sh
WORKDIR /root

ENTRYPOINT ["sh", "/root/entry.sh"]