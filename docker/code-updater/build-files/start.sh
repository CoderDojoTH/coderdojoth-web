#!/bin/bash

cd $CODE_PATH && \
git pull && \
pip install -r requirements.txt
make html && \
chown -R $UID:$UID .
