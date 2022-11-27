FROM python:3.6.8

# cd into retrograph directory
WORKDIR /retrograph

COPY randomwalks/rw_corpus_1.0_1.0_2_15_nl.tf /retrograph/randomwalks/rw_corpus_1.0_1.0_2_15_nl.tf
COPY models/BERT_BASE_UNCASED/bert_config.json /retrograph/models/BERT_BASE_UNCASED/bert_config.json

COPY requirements.txt ./requirements.txt
RUN pip install -r requirements.txt

COPY training_utility/run_pretraining_wo_nsp_adapter.py /retrograph/training_utility/run_pretraining_wo_nsp_adapter.py

RUN mkdir -p "models/output_pretrain_adapter"
RUN chmod a+w /retrograph/ -R







