void Drawntext() {
  if (Drawntext) {
    fill(#CB0C0C);
    textSize(50);
    text("exit", QuitX*0.955, QuitY/0.88);
    //
    textSize(50);
    text("Score", ScoreBoardX*6/6.85, ScoreBoardY*1.15);
    fill(#CB0C0C);
    //
  }
  if (Drawnertext) {
    fill(#FFFFFF);
    textSize(50);
    text("Click to start", 375, 300);
  }
}
