#!/bin/bash

OPT=$1
REGISTRY=registry-infra.proteus-tech.com

mv ../../output .

docker build $OPT -t $REGISTRY/coderdojo .
