#!/bin/bash

def upload(csvfile, bucketname, blobname):
   client = storage.Client()
   bucket = client.get_bucket(bucketname)
   blob = Blob(blobname, bucket)
   blob.upload_from_filename(csvfile)
   gcslocation = 'gs://{}/{}'.format(bucketname, blobname)
   print ('Uploaded {} ...'.format(gcslocation))
   return gcslocation
