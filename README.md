# foundry-burningwheel-docker
A simple Docker config to contribute to [foundry-burningwheel](https://github.com/StasTserk/foundry-burningwheel/)

## Requirements
* Docker
* Docker-compose
* Git

## Usage
* Unpack the Foundry code in a `./foundry` directory
* Clone the foundry-burningwheel repository in `./foundry-burningwheel`
* Create a foundryConfig.json file in `./foundry-burningwheel/foundryConfig.json` with the following content: `{"deployDest":"./release"}`
* run `docker-compose up` to run Foundry
* Foundry will be reachable on [local port 9000](http://127.0.0.1:9000)
* when you're done, run `docker-compose down`
