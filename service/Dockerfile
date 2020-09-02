# FROM tensorflow/tensorflow:1.14.0-gpu-py3
FROM nvidia/cuda:10.2-cudnn7-devel-ubuntu18.04

RUN apt-get update && \
    apt-get install -y nano bash jq git ca-certificates gcc g++ wget python3-dev python3-pip unzip

WORKDIR /opt/service
COPY . .

RUN pip3 install -U pip && \
    pip3 install -r requirements.txt

RUN mkdir -p /opt/service/model \
    && cd /opt/service/model \
    && wget https://storage.googleapis.com/bert_models/2018_10_18/uncased_L-12_H-768_A-12.zip \
    && unzip uncased_L-12_H-768_A-12.zip

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8

CMD ["./docker-entrypoint.sh"]
