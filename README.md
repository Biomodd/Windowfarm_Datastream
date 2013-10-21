Windowfarm_Datastream
=====================

Receive XML data from the Biomodd Windowfarm

Processing app to download the XML data from:
https://cosm.com/feeds/83640


To Use:
 1. Copy examples to your Processing directory

 2. Copy 'cosm' folder in libraries to your Processing libraries directory

 3. Current variables include:

    moistureVal -> // moisture value 

    lightValue -> // temperature 

    temperatureValue  -> // temperature (near front window) 

 4. Data is uploaded from the Windowfarm once every minute. 


Examples
=====================

windowfarm_get_simple
- returns recent moisture, light, temp readings

windowfarm_get_feed	
- returns recent moisture, light, temp readings with additional feed data

windowfarm_metadata
- returns all data from the feed including: elevation, lat, long

there are additional examples in the libraries/cosm/examples folder
