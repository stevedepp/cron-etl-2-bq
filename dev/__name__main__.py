#!/bin/bash

if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description='ingest flights data from BTS website to GCS')
    parser.add_argument('--bucket', help='GCS bucket to upload data to',
                       required=True)
    parser.add_argument('--year', help='Example: 2015.', required=True)
    parser.add_argument('--month', help='01 for Jan.', required=True)

    try:
        args = parser.parse_args()
        gcsfile = ingest(args.year, args.month, args.bucket)
        print ('Success ... ingested to {}'.format(gcsfile))
   except DataUnavailable as e:
        print ('Try again later: {}'.format(e.message))
