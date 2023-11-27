/*
void population() {
  //Simple Width Algorithm
  widthSquare = appWidth*1/4;
  heightSquare = widthSquare;
  //
  //Height Error Check
  if ( widthSquare*7 <= appHeight ) {
    //println("true");
    //Empty if
  } else {
    println("false");
    widthSquare = heightSquare = appHeight*1/7;
    border = appWidth*1/4;
    border = border*1/2;
  } //End Height Error Check
  //
  // Writing X&Y rect() Varibles
  for (int i=0; i<numPadColumns; i++ ) {
    // i stops for x not y
    x[i] = widthSquare*(2*i+1)/2;
    //println("Inside x", x[i] );
  }//END for
  for (int i=0; i<numPadRows; i++ ) {
    y[i] = widthSquare*(2*i+5)/2;
  }
}
*/

void Population () {
  appWidth = width;
  appHeight = width;
  smallDimension = (appWidth<appHeight) ? appWidth : appHeight;
  //onesixths = appWidth * 1/6;
  twosixths = appWidth * 2/6;
  threesixths = appWidth * 3/6;
  foursixths = appWidth * 4/6;
  //fivesixths = appWidth * 5/6;
  //sixsixths = appWidth * 6/6;
  squaresize = 150;
}
