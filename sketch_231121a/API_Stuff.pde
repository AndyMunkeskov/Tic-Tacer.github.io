//
import java.util.Date;
//
String weatherIcon, country, icon, description, mainWeather, name;
float tempEdmonton, tempMinEdmonton, tempMaxEdmonton;
float temp, feelsLike, tempMin, tempMax;
int lon, lat, humidity, pressure, sunrise, sunset, timeCall;
Date apiCurrentDateCall; // Variable Holds All Date Functions, Can Look Up Later
//
Date homanDate (long unixTime) {
  Date dateHoman = new Date(unixTime*1000);
  return dateHoman;
}
//
void APICall(String ServerCall) {
  JSONObject object = loadJSONObject( ServerCall );
  JSONObject coord = object.getJSONObject("coord");
  lat = coord.getInt("lat");
  lon = coord.getInt("lon");
  //
  JSONObject main = object.getJSONObject("main"); //Unwrap {}
  temp = main.getFloat("temp");
  tempMin = main.getFloat("temp_min");
  tempMax = main.getFloat("temp_max");
  feelsLike = main.getFloat("feels_like");
  humidity = main.getInt("humidity");
  pressure = main.getInt("pressure");
  //
  JSONObject sys = object.getJSONObject("sys");
  country = sys.getString("country");
  sunrise = sys.getInt("sunrise");
  sunset = sys.getInt("sunset");
  //
  JSONArray weather = object.getJSONArray("weather");
  JSONObject weatherObject = weather.getJSONObject(0);
  icon = weatherObject.getString("icon");
  description = weatherObject.getString("description");
  mainWeather = weatherObject.getString("main");
  //
  name = object.getString("name");
  timeCall = object.getInt("dt");
  //
  println("Passed URL", ServerCall);
  println("Object", object);
  println( name, country, homanDate(timeCall) );
  println("Coordinates", lat, lon);
  println( "Sunrise/Sunset", homanDate(sunrise), homanDate(sunset) );
  println( "Temperature:", temp, "\tFeels Like:", feelsLike, "\tMin/Mas:", tempMin, tempMax );
  println( icon, mainWeather, description );
} //End API call
