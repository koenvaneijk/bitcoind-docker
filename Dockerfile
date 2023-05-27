FROM ubuntu

# Bitcoin Core version should be set to the latest available version
ARG BITCOIN_CORE_VERSION=24.1

# Install required packages from APT
RUN apt-get update
RUN apt-get install wget -y

# Download Bitcoin Core
RUN wget https://bitcoincore.org/bin/bitcoin-core-$BITCOIN_CORE_VERSION/bitcoin-$BITCOIN_CORE_VERSION-arm-linux-gnueabihf.tar.gz  

# Extract & install
RUN tar -xzvf bitcoin-$BITCOIN_CORE_VERSION-arm-linux-gnueabihf.tar.gz  
RUN install -m 0755 -o root -g root -t /usr/local/bin /bitcoin-$BITCOIN_CORE_VERSION/bin/*

CMD bitcoind