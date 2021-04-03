## cron a batch ITL into BigQuery

Transcript & slides are below. Please click this demo video to hear it with sound.

![](https://user-images.githubusercontent.com/38410965/111926144-0c334400-8a82-11eb-9af7-d5a19c9afdf4.mp4)

#

Demo Video 4
cron a batch ETL pipeline into Big Query  

Steve Depp
MSDS 434 section 55 

manual path to ETL into Big Query
-	download
-	unzip
-	remove quotes and commas
-	make bucket
-	upload
or
-	ingest pasta

cron batch ETL pipeline into BQ
-	code adjustment
-	generate token
-	deploy
-	call the function
-	set up cron

Lakshmanan, V. (2017). Data Science on the Google Cloud Platform: Implementing 
End-to-end Real-time Data Pipelines: from Ingest to Machine Learning. " O'Reilly Media, Inc.".

#

manual path to ETL into Big Query

download
-	getting variable list for heading

varlist:FL_DATE,OP_UNIQUE_CARRIER,OP_CARRIER_AIRLINE_ID,OP_CARRIER,OP_CARRIER_FL_NUM,ORIGIN_AIRPORT_ID,ORIGIN_AIRPORT_SEQ_ID,ORIGIN_CITY_MARKET_ID,ORIGIN,DEST_AIRPORT_ID,DEST_AIRPORT_SEQ_ID,DEST_CITY_MARKET_ID,DEST,CRS_DEP_TIME,DEP_TIME,DEP_DELAY,TAXI_OUT,WHEELS_OFF,WHEELS_ON,TAXI_IN,CRS_ARR_TIME,ARR_TIME,ARR_DELAY,CANCELLED,CANCELLATION_CODE,DIVERTED,DISTANCE


![OST_R BTS Transtats](https://user-images.githubusercontent.com/38410965/113493529-02600680-94ae-11eb-9fc4-c4fcb7bbd603.png)

