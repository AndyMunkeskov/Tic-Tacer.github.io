void squares() {
  //
  if (squares) {

    square(sidetwo, sidetwo, squaresize);
    square(sidethree, sidetwo, squaresize);
    square(sidefour, sidetwo, squaresize);
    square(sidetwo, sidethree, squaresize);
    square(sidethree, sidethree, squaresize);
    square(sidefour, sidethree, squaresize);
    square(sidetwo, sidefour, squaresize);
    square(sidethree, sidefour, squaresize);
    square(sidefour, sidefour, squaresize);
    //
   
    textSize(50);
    text("exit", QuitX*1/3, QuitY*1/3);
    rect(QuitX, QuitY, QuitWidth, QuitHeight);
   
   
  }
}
