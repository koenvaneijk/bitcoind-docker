# Bitcoin Core Docker Image
## Build
```bash
git clone https://github.com/koenvaneijk/bitcoind-docker
cd bitcoind-docker
docker build -t bitcoind-docker .
``` 
## Run (Linux or Windows PowerShell)
``` 
docker run -d -v ${pwd}/.bitcoin:/root/.bitcoin bitcoind-docker
```
## To do
- Add JSON-RPC configuration (username, password, port)