void setup() {

  Population();
  buildingURL();
  iconBuildingURLSetup();
  APICall(URLCurrentEdmonton);
  size (1000, 1000);
  //
  enteredTimeSeconds = 13; //CAUTION: will need to convert minutes and hours to seconds
  enteredTimeMilliSeconds = enteredTimeSeconds * 1000;
  //Last line in Setup to adjust currentTime in void draw(){}
  timerStart = millis(); //Measure program start time called "scope"
  println(timerStart);
}
void draw() {
  image (weatherIconImage, 0, 0);
  rect(widthSquare, heightSquare, widthSquare, heightSquare);
  fill(#FFFFFF);
  Background();
  rectMode(CENTER);
  squares();
  Drawntext();
  //
  currentTime = millis();
  countingTime = currentTime - timerStart;
  println(timerStart, currentTime, enteredTimeMilliSeconds);
  if ( countingTime >= enteredTimeMilliSeconds ) {
    println("Donereno");
    //
  
  }
}
void keyPressed () {
  if (key=='E' || key=='e') APICall(URLCurrentEdmonton);
}
void mousePressed () {
  //
  if (mouseX>0 && mouseX<1000 && mouseY>0 && mouseY<1000) {
    squares = true;
    quad = false;
    background = true;
    Drawntext = true;
    //

    if (mouseX>sidetwo && mouseX<sidetwo + squaresize && mouseY>sidetwo && mouseY<sidetwo + squaresize) {
      println("yes");
      //fill(#FFFFFF);
      text("O", 300, 200);
    }
    //
    if (mouseX>sidethree && mouseX<sidethree + squaresize && mouseY>sidetwo && mouseY<sidetwo + squaresize) {
      println("no");
    }
    //
    if (mouseX>sidefour && mouseX<sidefour + squaresize && mouseY>sidetwo && mouseY<sidetwo + squaresize) {
      println("maybe");
    }
    //
    if (mouseX>sidetwo && mouseX<sidetwo + squaresize && mouseY>sidethree && mouseY<sidethree + squaresize) {
      println("possibly");
    }
    //
    if (mouseX>sidethree && mouseX<sidethree + squaresize && mouseY>sidethree && mouseY<sidethree + squaresize) {
      println("perhaps");
    }
    //
    if (mouseX>sidefour && mouseX<sidefour + squaresize && mouseY>sidethree && mouseY<sidethree + squaresize) {
      println("in theory");
    }
    //
    if (mouseX>sidetwo && mouseX<sidetwo + squaresize && mouseY>sidefour && mouseY<sidefour + squaresize) {
      println("in consideration");
    }
    //
    if (mouseX>sidethree && mouseX<sidethree + squaresize && mouseY>sidefour && mouseY<sidefour + squaresize) {
      println("mayhaps");
    }
    //
    if (mouseX>sidefour && mouseX<sidefour + squaresize && mouseY>sidefour && mouseY<sidefour + squaresize) {
      println("theoretically");
    }
  }
  //
  if (mouseX>QuitX && mouseX<QuitX && mouseY>0 && mouseY<QuitY) {
    exit();
    //
  }
}
