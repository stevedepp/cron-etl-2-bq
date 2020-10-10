#!/bin/bash

class DataUnavailable(Exception):
    def __init__(self, message):
        self.message = message

class UnexpectedFormat(Exception):
    def __init__(self, message):
        self.message = message

# need to correct this header

def verify_ingest(outfile):
    expected_header =
'FL_DATE,UNIQUE_CARRIER,AIRLINE_ID,CARRIER,FL_NUM,ORIGIN_AIRPORT_ID,'+
'ORIGIN_AIRPORT_SEQ_ID,ORIGIN_CITY_MARKET_ID,ORIGIN,DEST_AIRPORT_ID,'+
'DEST_AIRPORT_SEQ_ID,DEST_CITY_MARKET_ID,DEST,CRS_DEP_TIME,DEP_TIME,'+
'DEP_DELAY,TAXI_OUT,WHEELS_OFF,WHEELS_ON,TAXI_IN,CRS_ARR_TIME,ARR_TIME,'+
'ARR_DELAY,CANCELLED,CANCELLATION_CODE,DIVERTED,DISTANCE'

    with open(outfile, 'r') as outfp:
        firstline = outfp.readline().strip()
        if (firstline != expected_header):
            os.remove(outfile)
            msg = 'Got header={}, but expected={}'.format(
                                firstline, expected_header)
            logging.error(msg)
            raise UnexpectedFormat(msg)

        if next(outfp, None) == None:
            os.remove(outfile)
            msg = ('Received file from BTS with only header and no content')
            raise DataUnavailable(msg)
