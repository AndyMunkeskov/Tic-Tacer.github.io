PFont font;
color purple=#4411BC, white=#000000; //Not night mode friendly
//
void textSetup() {

  //Fonts from OS
  String[] fontList = PFont.list();
  printArray(fontList);
  //
  font = createFont ("GillSansMT-48", 55);
} // End textSetup
//
void textDraw( color ink, int alignX, int alignY, PFont font, String text, float rectX, float rectY, float rectWidth, float rectHeight ) {
  fill( ink );
  textAlign (alignX, alignY);
  float size = textCalculator(  rectWidth, rectHeight, text );
  textFont(font, size); //Change number until it fits
  text( text, rectX, rectY, rectWidth, rectHeight );
  fill(white);
}//End Text Draw
//
float textCalculator(float size, float rectWidth, String text ) {
  size = appWidth;
  textSize( size);
  while ( textWidth( a ) >= rectWidth ) {
    size = size * 0.99;
    textSize( size);
  } //End WHILE
  return size;
} //End Calculator
