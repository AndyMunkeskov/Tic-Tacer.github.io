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
    rect(QuitX, QuitY, QuitWidth, QuitHeight);
    //
    rect(ScoreBoardX, ScoreBoardY, ScoreboardW, ScoreBoardH);
    //
   if(line){
    line(578, 76, 578, 175);
    line(411, 76, 411, 175);
    }
  }
}
