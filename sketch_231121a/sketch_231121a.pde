void setup() {

  Population();
  size (1000, 1000);
}
void draw() {
  Background();
  rectMode(CENTER);
  squares();
  Drawntext();
}
void keyPressed () {
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
  if (mouseX>0 && mouseX<QuitX && mouseY>0 && mouseY<QuitY) {
    exit();
    //
  }
}
