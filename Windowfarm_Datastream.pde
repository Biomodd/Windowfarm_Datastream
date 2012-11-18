// Basic example to retrieve data from an existing Cosm feed
//
// See many other methods available to the DataIn object here:
// http://www.eeml.org/library/docs/eeml/DataIn.html

// the values are updated from the Windowfarm once per minute
import eeml.*;

DataIn dIn;

float moistureVal; // moisture value from the window farm
float lightValue;
float temperatureValue;

void setup(){
    // set up DataIn object; indicate the URL you want, your Pachube API key, and how often you want it to update
    // e.g. every 15 seconds    
    dIn = new DataIn(this, "https://api.cosm.com/v2/feeds/83640.xml", "TQu-ATEPXzFMNk2uRiadUvqqHxmkv9oL8bqHOj7ZIHE", 60000);
}

void draw()
{
    // do whatever needs doing in the main loop
}

// onReceiveEEML is run every time your app receives back EEML that it has requested from a Pachube feed. 
void onReceiveEEML(DataIn d){ 
  
    moistureVal = d.getValue(0);
    lightValue = d.getValue(1);
    temperatureValue = d.getValue(2);

    println("Moisture: " + moistureVal + 
            " Light: " + lightValue + 
            " Temp " + temperatureValue);
            
}
