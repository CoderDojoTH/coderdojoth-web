#!/bin/bash

cd $CODE_PATH && \
pip install -r requirements.txt && \
make html && \
chown -R $UID:$UID .
