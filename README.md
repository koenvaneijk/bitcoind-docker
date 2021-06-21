# Bitcoin Core Docker Image
## Build
```bash
docker build -t bitcoind-docker .
``` 
## Run (Windows)
``` 
docker run -d -v %cd%/.bitcoin:/root/.bitcoin bitcoind-docker 
``` 

# To do
- Replace Ubuntu 20.04 base image with slimmer image for better resource efficiency
- Add JSON-RPC configuration (username, password, port)