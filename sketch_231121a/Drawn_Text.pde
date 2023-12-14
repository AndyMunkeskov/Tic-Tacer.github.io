void Drawntext() {
  if (Drawntext) {
    textSize(50);
    text("exit", QuitX, QuitY);
    //
    textSize(50);
    text("Score", ScoreBoardX*4/6, ScoreBoardY*4/6);
  }
}
