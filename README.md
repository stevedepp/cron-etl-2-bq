## cron a batch ITL into BigQuery

Transcript & slides are below. Please click this demo video to hear it with sound.

![](https://user-images.githubusercontent.com/38410965/111926144-0c334400-8a82-11eb-9af7-d5a19c9afdf4.mp4)

#

> Hello everyone thank you for watching my video.  This week i stepped through the manual and automatic versions of ETL presented in Lakshamn’s chapter 2.  For the manual path ...  

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
> ... we need to arrange for proper scraping to download headings and variables, ...

### manual path to ETL into Big Query  

**download**  
-	getting variable list for heading  

**varlist**:FL_DATE,OP_UNIQUE_CARRIER,OP_CARRIER_AIRLINE_ID,OP_CARRIER,OP_CARRIER_FL_NUM,ORIGIN_AIRPORT_ID,ORIGIN_AIRPORT_SEQ_ID,ORIGIN_CITY_MARKET_ID,ORIGIN,DEST_AIRPORT_ID,DEST_AIRPORT_SEQ_ID,DEST_CITY_MARKET_ID,DEST,CRS_DEP_TIME,DEP_TIME,DEP_DELAY,TAXI_OUT,WHEELS_OFF,WHEELS_ON,TAXI_IN,CRS_ARR_TIME,ARR_TIME,ARR_DELAY,CANCELLED,CANCELLATION_CODE,DIVERTED,DISTANCE  

![OST_R BTS Transtats](https://user-images.githubusercontent.com/38410965/113493529-02600680-94ae-11eb-9fc4-c4fcb7bbd603.png)

#

> ... adjust the variables for generic month & year scraping, ...

### manual path to ETL into Big Query  

**download**  
-	getting variables for scraping  

<img width="637" alt="DEST2CCRS_DEP_TIME2CDEP_TIMEX2CDEP_DELAY2CTAXI_OUTX2CWHEELS_OFF2CWHEELS_ON" src="https://user-images.githubusercontent.com/38410965/113493594-8e722e00-94ae-11eb-98c5-9eede562fef8.png">

<img width="630" alt="_FL_UM2CORIGIN_AIRPORT_ID2CRG_ORTD" src="https://user-images.githubusercontent.com/38410965/113493595-94680f00-94ae-11eb-83c1-1ae57a1a931d.png">

#

> ... test it out, ...

### manual path to ETL into Big Query  

**download**  
-	test it out  

<img width="682" alt="data download sh" src="https://user-images.githubusercontent.com/38410965/113493629-122c1a80-94af-11eb-9194-172fec880970.png">

#

> ... unzip, ...

### manual path to ETL into Big Query  

**unzip**  

<img width="682" alt="touch zip_to_cav sh" src="https://user-images.githubusercontent.com/38410965/113493638-338d0680-94af-11eb-93ae-9b882e224774.png">

#

> ... transform by deleting quotes and commas, ...

### manual path to ETL into Big Query  

**quotes and commas**  

<img width="682" alt="depp_dr4 touch quotes_commas sh" src="https://user-images.githubusercontent.com/38410965/113493650-4f90a800-94af-11eb-8c9c-d4812f745866.png">

#

> ... and to load, we need to make a bucket, ...

### manual path to ETL into Big Query  

**make a bucket**  

<img width="689" alt="stevedepp@Steves-MBP-2" src="https://user-images.githubusercontent.com/38410965/113493660-6b944980-94af-11eb-8c08-4c5807681cd8.png">

#

> ... and then upload.

### manual path to ETL into Big Query  

**upload**  

<img width="682" alt="run significantly faster if you instead use gsutil" src="https://user-images.githubusercontent.com/38410965/113493669-849cfa80-94af-11eb-94cd-741ee05d0795.png">

#

> For automatic, either these 4 lines could be placed in a cron job. 

### manual path to ETL into Big Query  

**make spaghetti**  

<img width="682" alt="- nano injest_p" src="https://user-images.githubusercontent.com/38410965/113493672-967e9d80-94af-11eb-898d-9898a609c41e.png">

#

> Or GCP can be employed: we need to first adjust the code to ensure those retrieved headers are used for exception handling. 

### cron batch ETL pipeline into BQ  

**code adjustment** - exception handling for file headers

<img width="682" alt="stevedepp" src="https://user-images.githubusercontent.com/38410965/113493690-c88fff80-94af-11eb-947d-cf4dbc1db2ed.png">

<img width="682" alt="firstline, expected_header)" src="https://user-images.githubusercontent.com/38410965/113493695-cded4a00-94af-11eb-9480-9770364a92f3.png">

#

> Then, generate and insert a token into main.

### cron batch ETL pipeline into BQ  

**generate token** - for main.py  

<img width="682" alt="except DataUnavailable as ei" src="https://user-images.githubusercontent.com/38410965/113493716-fa08cb00-94af-11eb-81cc-dafbcfb854d5.png">

#

> Then simply deploy and call the function … and set up a cron job

### cron batch ETL pipeline into BQ  

**deploy, call, cron (every 5 minutes)**  

|        |                                                  |
| :---   | :---                                             | 
| region:| us-central1                                      | 
| token: | O6tkNdFnCqhwiyiXXutXGdhsmPIv3cBn                 |
| url:   | ingest_flights_AopAxrUvvzQVPZE0cXvdm8ordW8v9E8S  |
 	  
<img width="689" alt="stevedepp@Steves-MBP-2" src="https://user-images.githubusercontent.com/38410965/113493737-258bb580-94b0-11eb-8b5d-e394b6298711.png">

#

> Validation, can be via cloud scheduler and the logs available there.

### cron batch ETL pipeline into BQ  

**validate**  

<img width="1453" alt="Google Cloud Platform" src="https://user-images.githubusercontent.com/38410965/113493858-4d2f4d80-94b1-11eb-85bc-a6313edcb1df.png">

<img width="1453" alt="Google Cloud Platform" src="https://user-images.githubusercontent.com/38410965/113493859-4f91a780-94b1-11eb-9306-305d2d811f10.png">

#

> when done remember your wallet!: kill storage, ...

### shut it down  

**storage**  

<img width="694" alt="Storage browser" src="https://user-images.githubusercontent.com/38410965/113493869-6c2ddf80-94b1-11eb-84f7-45eea8d4f870.png">

#

> ... your timer, ...

### shut it down  

**cloud scheduler**  

<img width="1145" alt="Delete selected job" src="https://user-images.githubusercontent.com/38410965/113493885-81a30980-94b1-11eb-8254-3a29b5b82b2e.png">

#

> ... your topic and subscription, ...

### shut it down  

**pub/sub**  
-	topics  
-	subscriptions  

<img width="952" alt="Delete topic" src="https://user-images.githubusercontent.com/38410965/113493902-a0a19b80-94b1-11eb-980f-c18134527272.png">

#

> ... and the serverless gears that made it happen.  And breathe ...

### shut it down  

**cloud functions**  

<img width="953" alt="ingest_flights_AopAxrUvvzQVPZE0cXvdm8ord" src="https://user-images.githubusercontent.com/38410965/113592545-4e708f80-9603-11eb-8287-99b317cad50f.png">

#

> I did have hiccups along the way

### hiccups

-	""'StreamExhausted'" object has no attribute message
-	several API’s not enables 
-	multi regional bucket
-	cron success but no additional files

#

> Thank you for watching.

thank you for watching 

feedback please

#
