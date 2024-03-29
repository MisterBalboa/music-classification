#!/bin/bash

gcloud compute scp ./requirements.txt ignaciopalma@spec-worker-$1:/home/ignaciopalma/ --zone=us-central1-a
gcloud compute scp ./image-preprocess.py ignaciopalma@spec-worker-$1:/home/ignaciopalma/ --zone=us-central1-a
gcloud compute scp ./build.sh ignaciopalma@spec-worker-$1:/home/ignaciopalma/ --zone=us-central1-a
gcloud compute scp ./train_labels.csv ignaciopalma@spec-worker-$1:/home/ignaciopalma/train_labels.csv --zone=us-central1-a
gcloud compute scp ./tracks_missing.txt ignaciopalma@spec-worker-$1:/home/ignaciopalma/tracks_missing.txt --zone=us-central1-a
gcloud compute scp ./process-missing-files.py ignaciopalma@spec-worker-$1:/home/ignaciopalma/process-missing-files.py --zone=us-central1-a
