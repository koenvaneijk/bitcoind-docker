FROM ubuntu:20.04

# Bitcoin Core version should be set to the latest available version
ARG BITCOIN_CORE_VERSION=22.0

# Install required packages from APT
RUN apt-get update
RUN apt-get install wget -y

# Download Bitcoin Core
RUN wget https://bitcoin.org/bin/bitcoin-core-$BITCOIN_CORE_VERSION/bitcoin-$BITCOIN_CORE_VERSION-x86_64-linux-gnu.tar.gz

# Extract & install
RUN tar -xzvf bitcoin-$BITCOIN_CORE_VERSION-x86_64-linux-gnu.tar.gz
RUN install -m 0755 -o root -g root -t /usr/local/bin /bitcoin-$BITCOIN_CORE_VERSION/bin/*

CMD bitcoind