# What about docker
 This is docker image for run coderdojo website


# Prerequisite
- Docker 1.11 or above
- Docker Compose

# How to use
  - Clone https://github.com/CoderDojoTH/coderdojoth-web.git
  - Build updater image
```
  $ cd coder-updater
  $ ./build.sh
```
  - Run docker compose for compile code
```
  $ docker-compose -f updater-compose.yml up
```
  - Build docker image for coderdojo website
```
  $ cd coderdojo
  $ ./build.sh
```
  - Run docker compose for run coderdojo website
```
  $ docker-compose -f coder-compose.yml up -d
```
