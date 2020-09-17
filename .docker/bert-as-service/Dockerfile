FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04

RUN apt-get update && \
    apt-get install -y nano bash jq git ca-certificates gcc g++ wget python3-dev python3-pip unzip

WORKDIR /opt/service
COPY requirements.txt .

RUN pip3 install -r requirements.txt

RUN wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip && \
    unzip uncased_L-12_H-768_A-12.zip

CMD ["bert-serving-start", "-model_dir", "uncased_L-12_H-768_A-12", "-num_worker=12"]
