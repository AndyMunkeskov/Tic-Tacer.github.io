void setup() {
  size(1000, 900);
  appWidth = width;
  appHeight = height;
  //
  //Population of rect() variables
  widthSquare = appWidth*1/4 ;
  heightSquare = widthSquare;
  if ( widthSquare*7 <= appHeight ) {
    //println("true");
    //Empty if
  } else {
    println("false");
      widthSquare = heightSquare = appHeight*1/7;
      border = appWidth*1/4; 
      border = border*1/2;
  } //End Height Error Check
  for (int i=0; i<numPadColumns; i++ ) {
    // i stops for x not y
    x[i] = widthSquare*(2*i+1)/2;
    //println("Inside x", x[i] );
  }//END for
  for (int i=0; i<numPadRows; i++ ) {
    y[i] = widthSquare*(2*i+5)/2;
    //println("Inside y", y[i] );
  }//End for

  //println("Inside", y[i]);
  //y[i] = widthSquare*5/2;
  //End FOR
  //printArray(x);
  //printArray(y);
  //
  //Nested FOR, reading rect() arrays
  //
} //End Setup
//
void draw() {
  for ( int i=0; i<numPadColumns; i++) {
    for ( int j=0; j<numPadRows-1; j++ ) {
      stroke(255, 255, 255);
      rect(x[i], y[j], widthSquare, heightSquare);
      fill(#000000);
    }//End for
  }//End for



  /*
  
   rect(x0, y0, widthSquare, heightSquare);
   rect(x0, y1, widthSquare, heightSquare);
   rect(x0, y2, widthSquare, heightSquare);
   rect(x0, y3, widthSquare, heightSquare);
   rect(x1, y0, widthSquare, heightSquare);
   rect(x1, y1, widthSquare, heightSquare);
   rect(x1, y2, widthSquare, heightSquare);
   rect(x1, y3, widthSquare, heightSquare);
   rect(x2, y0, widthSquare, heightSquare);
   rect(x2, y1, widthSquare, heightSquare);
   rect(x2, y2, widthSquare, heightSquare);
   rect(x2, y3, widthSquare, heightSquare);
   */
} //End Draw
//
void mousePressed() {
  //x0, y0, widthSquare, heightSquare
  for (int i=0; i<1; i++)
    for (int j=0; j<1; j++) {
      if (mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j+3] && mouseY<y[j+3]+widthSquare ) {
        println("Button #:", i+0);
      }
      if (mouseX>x[i+1] && mouseX<x[i+1]+widthSquare && mouseY>y[j+3] && mouseY<y[j+3]+widthSquare ) {

        String equals = "=";
        if (equals.equals("=")) {
          println("=");
        }
      }

      if (mouseX>x[i+2] && mouseX<x[i+2]+widthSquare && mouseY>y[j+3] && mouseY<y[j+3]+widthSquare ) {

        String equals = "00";
        if (equals.equals("00")) {
          println("00");
        }
      }
      if (mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j+2] && mouseY<y[j+2]+widthSquare ) {
        println("Button #:", i+1);
      }
      if (mouseX>x[i+1] && mouseX<x[i+1]+widthSquare && mouseY>y[j+2] && mouseY<y[j+2]+widthSquare ) {
        println("Button #:", i+2);
      }
      if (mouseX>x[i+2] && mouseX<x[i+2]+widthSquare && mouseY>y[j+2] && mouseY<y[j+2]+widthSquare ) {
        println("Button #:", i+3);
      }
      if (mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j+1] && mouseY<y[j+1]+widthSquare ) {
        println("Button #:", i+4);
      }
      if (mouseX>x[i+1] && mouseX<x[i+1]+widthSquare && mouseY>y[j+1] && mouseY<y[j+1]+widthSquare ) {
        println("Button #:", i+5);
      }
      if (mouseX>x[i+2] && mouseX<x[i+2]+widthSquare && mouseY>y[j+1] && mouseY<y[j+1]+widthSquare ) {
        println("Button #:", i+6);
      }
      if (mouseX>x[i] && mouseX<x[i]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare ) {
        println("Button #:", i+7);
      }
      if (mouseX>x[i+1] && mouseX<x[i+1]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare ) {
        println("Button #:", i+8);
      }
      if (mouseX>x[i+2] && mouseX<x[i+2]+widthSquare && mouseY>y[j] && mouseY<y[j]+widthSquare ) {
        println("Button #:", i+9);
      }
    }
} //End mousePressed
//
void keyPressed() {
} //End keyPressed
//
//End Main Program
