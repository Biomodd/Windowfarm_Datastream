/****************
 Cosm example to pull all metadata from a feed and then from a datastream.
 All methods return a String, unless otherwise noted.
 
 view live stream graph at: https://cosm.com/feeds/83640
 ****************/

import cosm.*;

DataIn feed;

String apiKey = "TQu-ATEPXzFMNk2uRiadUvqqHxmkv9oL8bqHOj7ZIHE";
String feedId = "83640"; //http://cosm.com/feeds/37080

void setup() {

  feed = new DataIn(this, apiKey, feedId); //instantiate feed
  feed.setVerbose(true); //optional debug info toggle
  requestData();
}

void draw() {
  // something amazing
}

void requestData() {

  feed.connect(); //send a request for data

  println("\n--- feed info ---");
  println("title: "+       feed.getTitle());
  println("status: "+      feed.getStatus());
  println("description: "+ feed.getDescription());
  println("feed: "+        feed.getFeed());
  println("website: "+     feed.getWebsite());
  println("updated: "+     feed.getUpdated());
  println("created: "+     feed.getCreated());
  println("version: "+     feed.getVersion());
  println("user: "+        feed.getUser());

  println("\n--- datasource description ---");
  println("location name: "+   feed.getLocationName());
  println("domain: "+          feed.getDomain());
  println("disposition: "+     feed.getDisposition());
  println("elevation: "+       feed.getElevation());
  println("latitude: "+        feed.getLat());  //returns a double
  println("longitude: "+       feed.getLon());  //returns a double
  println("exposure: "+        feed.getExposure());
  println("datastreamCount: "+ feed.getDatastreamCount());
  println("feed tags: "+       feed.getFeedTagsAsList()); //returns a List<String> 

  println("\n--- datastream info ---");

  int currDatastream = 1; //will get metadata for stream number 1

  String id = feed.getStreamId(currDatastream);
  println("datastream id: "+ id);
  
  String lastUpdate = feed.getLastUpdateTimestamp(currDatastream);
  println("last updated at: "+ lastUpdate);

  float currentVal = feed.getValue(currDatastream);    //returns a float
  println("currVal: "+currentVal);

  float maxVal = feed.getStreamMaxVal(currDatastream); //returns a float
  println("maxVal: "+maxVal);

  float minVal = feed.getStreamMinVal(currDatastream); //returns a float
  println("minVal: "+minVal);
  
  List<String> streamTags = feed.getStreamTagsAsList(0); //returns a List <String> of tags
  println("tags:" + streamTags);
  
}
