#!/bin/bash

OPT=$1
REGISTRY=coderdojoth

mv ../../output .

docker build $OPT -t $REGISTRY/web .
