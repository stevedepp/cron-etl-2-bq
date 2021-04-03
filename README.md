## cron a batch ITL into BigQuery

Transcript & slides are below. Please click this demo video to hear it with sound.

![](https://user-images.githubusercontent.com/38410965/111926144-0c334400-8a82-11eb-9af7-d5a19c9afdf4.mp4)

#

**Demo Video 4**  
## cron a batch ETL pipeline into Big Query  

**Steve Depp**  
**MSDS 434 section 55**  

**manual path to ETL into Big Query**  
-	download  
-	unzip  
-	remove quotes and commas  
-	make bucket  
-	upload  
or  
-	ingest pasta  

**cron batch ETL pipeline into BQ**  
-	code adjustment  
-	generate token  
-	deploy  
-	call the function  
-	set up cron  

Lakshmanan, V. (2017). Data Science on the Google Cloud Platform: Implementing  
End-to-end Real-time Data Pipelines: from Ingest to Machine Learning. " O'Reilly Media, Inc.".  

#

### manual path to ETL into Big Query  

**download**  
-	getting variable list for heading  

**varlist**:FL_DATE,OP_UNIQUE_CARRIER,OP_CARRIER_AIRLINE_ID,OP_CARRIER,OP_CARRIER_FL_NUM,ORIGIN_AIRPORT_ID,ORIGIN_AIRPORT_SEQ_ID,ORIGIN_CITY_MARKET_ID,ORIGIN,DEST_AIRPORT_ID,DEST_AIRPORT_SEQ_ID,DEST_CITY_MARKET_ID,DEST,CRS_DEP_TIME,DEP_TIME,DEP_DELAY,TAXI_OUT,WHEELS_OFF,WHEELS_ON,TAXI_IN,CRS_ARR_TIME,ARR_TIME,ARR_DELAY,CANCELLED,CANCELLATION_CODE,DIVERTED,DISTANCE  

![OST_R BTS Transtats](https://user-images.githubusercontent.com/38410965/113493529-02600680-94ae-11eb-9fc4-c4fcb7bbd603.png)

#

### manual path to ETL into Big Query  

**download**  
-	getting variables for scraping  

<img width="637" alt="DEST2CCRS_DEP_TIME2CDEP_TIMEX2CDEP_DELAY2CTAXI_OUTX2CWHEELS_OFF2CWHEELS_ON" src="https://user-images.githubusercontent.com/38410965/113493594-8e722e00-94ae-11eb-98c5-9eede562fef8.png">

<img width="630" alt="_FL_UM2CORIGIN_AIRPORT_ID2CRG_ORTD" src="https://user-images.githubusercontent.com/38410965/113493595-94680f00-94ae-11eb-83c1-1ae57a1a931d.png">



#

### manual path to ETL into Big Query  

**download**  
-	test it out  

<img width="682" alt="data download sh" src="https://user-images.githubusercontent.com/38410965/113493629-122c1a80-94af-11eb-9194-172fec880970.png">

#

### manual path to ETL into Big Query  

**unzip**  

<img width="682" alt="touch zip_to_cav sh" src="https://user-images.githubusercontent.com/38410965/113493638-338d0680-94af-11eb-93ae-9b882e224774.png">

#

### manual path to ETL into Big Query  

**quotes and commas**  

<img width="682" alt="depp_dr4 touch quotes_commas sh" src="https://user-images.githubusercontent.com/38410965/113493650-4f90a800-94af-11eb-8c9c-d4812f745866.png">

#

### manual path to ETL into Big Query  

**make a bucket**  

<img width="689" alt="stevedepp@Steves-MBP-2" src="https://user-images.githubusercontent.com/38410965/113493660-6b944980-94af-11eb-8c08-4c5807681cd8.png">

#

### manual path to ETL into Big Query  

**upload**  

<img width="682" alt="run significantly faster if you instead use gsutil" src="https://user-images.githubusercontent.com/38410965/113493669-849cfa80-94af-11eb-94cd-741ee05d0795.png">

#

### manual path to ETL into Big Query  

**make spaghetti**  

<img width="682" alt="- nano injest_p" src="https://user-images.githubusercontent.com/38410965/113493672-967e9d80-94af-11eb-898d-9898a609c41e.png">

#

### cron batch ETL pipeline into BQ  

**code adjustment** - exception handling for file headers

<img width="682" alt="stevedepp" src="https://user-images.githubusercontent.com/38410965/113493690-c88fff80-94af-11eb-947d-cf4dbc1db2ed.png">

<img width="682" alt="firstline, expected_header)" src="https://user-images.githubusercontent.com/38410965/113493695-cded4a00-94af-11eb-9480-9770364a92f3.png">

#

### cron batch ETL pipeline into BQ  

**generate token** - for main.py  

<img width="682" alt="except DataUnavailable as ei" src="https://user-images.githubusercontent.com/38410965/113493716-fa08cb00-94af-11eb-81cc-dafbcfb854d5.png">

#

### cron batch ETL pipeline into BQ  

**deploy, call, cron (every 5 minutes)**  
region: 	us-central1  
token: 	O6tkNdFnCqhwiyiXXutXGdhsmPIv3cBn  
url: 		ingest_flights_AopAxrUvvzQVPZE0cXvdm8ordW8v9E8S  

<img width="689" alt="stevedepp@Steves-MBP-2" src="https://user-images.githubusercontent.com/38410965/113493737-258bb580-94b0-11eb-8b5d-e394b6298711.png">

#





#





#





#





#
