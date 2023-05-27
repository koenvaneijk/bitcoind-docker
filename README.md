# Bitcoin Core Docker Image
## Build
```bash
git clone https://github.com/koenvaneijk/bitcoind-docker
cd bitcoind-docker
docker build -t bitcoind-docker .
``` 
## Run
### Linux/Powershell/MacOS
Without RPC:
```bash
docker run -d -v ${pwd}/.bitcoin:/root/.bitcoin bitcoind-docker
```
With RPC (replace `USERNAME` and `PASSWORD`):
```bash
docker run -d -v ${pwd}/.bitcoin:/root/.bitcoin -p 8332:8332 bitcoind-docker bitcoind -disablewallet -rpcuser=USERNAME -rpcpassword=PASSWORD
```