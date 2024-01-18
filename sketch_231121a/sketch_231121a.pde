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
  //image (weatherIconImage, 0, 0);
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
    println("Done or something");
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
    Drawnertext = false;
    //

    if (mouseX>side && mouseX<sidetwo*1.5/2 + squaresize && mouseY>sidetwo && mouseY<sidetwo  + squaresize) {
      textSize(50);
      text("X", sidetwo, sidetwo );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidethree && mouseX<sidethree + squaresize && mouseY>sidetwo && mouseY<sidetwo + squaresize) {
      textSize(50);
      text("X", sidethree, sidetwo );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidefour && mouseX<sidefour + squaresize && mouseY>sidetwo && mouseY<sidetwo + squaresize) {
      textSize(50);
      text("X", sidefour, sidetwo);
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidetwo && mouseX<sidetwo + squaresize && mouseY>sidethree && mouseY<sidethree + squaresize) {
      textSize(50);
      text("X", sidetwo, sidethree );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidethree && mouseX<sidethree + squaresize && mouseY>sidethree && mouseY<sidethree + squaresize) {
      textSize(50);
      text("X", sidethree, sidethree );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidefour && mouseX<sidefour + squaresize && mouseY>sidethree && mouseY<sidethree + squaresize) {
      textSize(50);
      text("X", sidefour, sidethree );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidetwo && mouseX<sidetwo + squaresize && mouseY>sidefour && mouseY<sidefour + squaresize) {
      textSize(50);
      text("X", sidetwo, sidefour );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidethree && mouseX<sidethree + squaresize && mouseY>sidefour && mouseY<sidefour + squaresize) {
      textSize(50);
      text("X", sidethree, sidefour );
      fill(#CB0C0C);
    }
    //
    if (mouseX>sidefour && mouseX<sidefour + squaresize && mouseY>sidefour && mouseY<sidefour + squaresize) {
      textSize(50);
      text("X", sidefour, sidefour );
      fill(#CB0C0C);
    }
  }
  //
  if (mouseX>QuitX && mouseX<QuitX + squaresize && mouseY>0 && mouseY<QuitY + squaresize*1.75/2) {
    exit();
    //
  }
}
