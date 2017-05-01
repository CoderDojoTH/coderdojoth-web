# What about docker
 This is docker image for run coderdojoth website


# Prerequisite
- Docker 1.11 or above
- Docker Compose

# How to use
  - Clone https://github.com/CoderDojoTH/coderdojoth-web.git
  - Build compiler image
```
  $ cd coder-compiler
  $ ./build.sh
```
  - Run docker compose for compile code
```
  $ docker-compose -f compiler-compose.yml run --rm compiler.coderdojo
```
  - Build docker image for coderdojo website
```
  $ cd coderdojo
  $ ./build.sh
```
  - Run docker compose for run coderdojoth website
```
  $ docker-compose -f coder-compose.yml up -d
```
