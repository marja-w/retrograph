#!/bin/bash

RANDOM_WALKS_SCRIPTS=randomwalks_utility

mkdir -p 'randomwalks'

# Preprocess the relations
python $RANDOM_WALKS_SCRIPTS/preprocess_cn.py

# Create the randomwalks using node2vec
python $RANDOM_WALKS_SCRIPTS/random_walks.py
