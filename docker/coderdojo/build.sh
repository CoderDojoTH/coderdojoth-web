#!/bin/bash

OPT=$1

mv ../../output .

docker build $OPT -t coderdojo .
