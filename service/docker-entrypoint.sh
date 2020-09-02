#!/bin/sh

cd /opt/service/model
nohup bert-serving-start -model_dir uncased_L-12_H-768_A-12 -num_worker=12 > bss.out &

cd /opt/service
uvicorn main:app --host 0.0.0.0 --port 8000
