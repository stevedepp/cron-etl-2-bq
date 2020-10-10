#!/bin/bash

export BUCKET=${BUCKET:=dsotgcp-depp}
echo "Uploading to bucket $BUCKET..."
gsutil cp 201511.csv gs://$BUCKET/flights/raw
#gsutil -m acl ch -R -g google.com:R gs://$BUCKET/flights/raw

