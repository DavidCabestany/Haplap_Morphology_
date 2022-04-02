#!/bin/bash

# This script presupposes you store your SIGMORPHON2020 shared task0 data in the directory task0-data/

# How to run the script:
# $ ./preprocess.sh 3LETTER-LANGUAGE-CODE

# e.g. for English:
# $ ./preprocess.sh eng

LANGUAGE=$1

# delete --testpref=test if you don't have test data
fairseq-preprocess \
    --source-lang="${LANGUAGE}.input" \
    --target-lang="${LANGUAGE}.output" \
    --trainpref=train \
    --validpref=dev \
    --tokenizer=space \
    --thresholdsrc=5 \
    --thresholdtgt=5 \
    --destdir="data-bin/${LANGUAGE}"

