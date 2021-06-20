# Bitcoin Core Docker Image
## Build
```bash
docker build -t bitcoind-docker .
``` 
## Run (Windows)
``` 
docker run -it -v %cd%/.bitcoin:/root/.bitcoin bitcoind-docker 
``` 