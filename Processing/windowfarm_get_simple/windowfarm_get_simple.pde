/****************
 This exmaple pulls the latest data value from the Windofarm.

 Use this API key to connect: TQu-ATEPXzFMNk2uRiadUvqqHxmkv9oL8bqHOj7ZIHE
 Cosm feed ID is: 83640

 view live stream graph at: https://cosm.com/feeds/83640
 ****************/

import cosm.*;

DataIn feed;

String apiKey = "TQu-ATEPXzFMNk2uRiadUvqqHxmkv9oL8bqHOj7ZIHE";
String feedId = "83640";

void setup() {
  
  feed = new DataIn(this, apiKey, feedId);
  requestData();
}

void draw() {
  //awesome stuff goes here
}

void requestData() {

    feed.connect(); //send pull request     

    /* get current values */
    float moistureVal; // moisture value from the window farm
    float lightValue;  // light value
    float temperatureValue; // temperature value

    moistureVal = feed.getValue(0);
    lightValue = feed.getValue(1);
    temperatureValue = feed.getValue(2);

    // print them to check
    println("Moisture: " + moistureVal + 
            " Light: " + lightValue + 
            " Temp " + temperatureValue);
    
}
