#!/bin/sh

# Start bert as a service
# cd /opt/service/model
# nohup bert-serving-start -model_dir uncased_L-12_H-768_A-12 -num_worker=12 > bss.out &

# Switch between service
cd /opt/service

case "$1" in
  'load')
     echo "Loading data into Milvus"
     exec python3 load.py -p /opt/service/data/arxiv-metadata-oai.json
  ;;
  *)
     echo "Starting API server"
     exec uvicorn main:app --host 0.0.0.0 --port 8000
   ;;
esac
