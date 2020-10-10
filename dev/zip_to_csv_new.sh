#!/bin/bash

def zip_to_csv(filename, destdir):

   zip_ref = zipfile.ZipFile(filename, 'r')
   cwd = os.getcwd()
   os.chdir(destdir)
   zip_ref.extractall()
   os.chdir(cwd)
   csvfile = os.path.join(destdir, zip_ref.namelist()[0])
   zip_ref.close()
   return csvfile

