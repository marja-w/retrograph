#!/bin/bash

DOWNLOAD_UTILITY_SCRIPTS=download_utility

mkdir -p 'models/BERT_BASE_UNCASED'

# DOWNLOAD BERT
python $DOWNLOAD_UTILITY_SCRIPTS/download_bert.py
