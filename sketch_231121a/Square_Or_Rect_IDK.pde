/*
void Gridthing() {
  for ( int i=0; i<numPadColumns; i++ ) {
  }
     for ( int j=0; j<numPadRows-1; j++ ) {
     }
       rect(x[i], y[j], widthSquare, heightSquare);
      stroke(255, 255, 255);
      fill(#004AFF);
}
*/

void Gameboard() {
  square(twosixths, twosixths, squaresize);
  square(threesixths, twosixths, squaresize);
  square(foursixths, twosixths, squaresize);
  square(twosixths, threesixths, squaresize);
  square(threesixths, threesixths, squaresize);
  square(foursixths, threesixths, squaresize);
  square(twosixths, foursixths, squaresize);
  square(threesixths, foursixths, squaresize);
  square(foursixths, foursixths, squaresize);
  quad(0, 0, 240, 241, 760, 241, 1000, 0);
  quad(0, 1000, 240, 759, 760, 759, 1000, 1000);
  quad(0, 0, 241, 240, 241, 760 ,0, 1000);
  quad(1000, 0, 759, 240, 759, 760 ,1000, 1000);
}
