void buildingURL() {
  String domain = "http://api.openweathermap.org";
  String baseURL_data = "/data/2.5/";
  String currentWeather = "weather?";
  String forecastWeather = "forecast?";
  String BaseURL_currentWeather = domain + baseURL_data + currentWeather;
  String baseURL_forecastWeather = domain + baseURL_data + forecastWeather;
  String place = "q=";
  String edmonton = "Edmonton,CA";
  String apiKey = "APPID=2cef2b0bb2063bfdde35e19bd3ccdec3";
  String mode = "mode=json";
  String unitMetric = "units=metric";
  String and = "&";
  //
  URLCurrentEdmonton = BaseURL_currentWeather + place + edmonton + and + apiKey + and + mode + and + unitMetric;
  URLForecastEdmonton = BaseURL_currentWeather + place + edmonton + and + apiKey + mode + unitMetric;
  //
  println("Current Edmonton URL", URLCurrentEdmonton);
  println("Forecast Edmonton URL", URLForecastEdmonton);
  //
}
