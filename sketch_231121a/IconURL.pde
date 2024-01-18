//http://openweathermap.org/img/wn/03d@2x.png
//
String baseIconURL = "https://openweathermap.org/img/wn/";
//
String sun = "01d";
String fileExtension = "@2x.png";
//
String weatherIconSetup;
String weatherIconString;
//
void iconBuildingURLSetup() {
  weatherIconSetup = baseIconURL + sun + fileExtension;
  //weatherIconImage = loadImage(weatherIconSetup);
}
void iconBuildingURLKeyPressed() {
  weatherIconString = baseIconURL + icon + fileExtension;
}
