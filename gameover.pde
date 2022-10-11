void gameover() {
  background(red);
  fill(white);
  textSize(100);
  text("GAME OVER", 400, 200);
  textSize(50);
  text("Score: " + score, 400, 400);
  if (score > bestScore) {
    bestScore = score;
  }
  textSize(50);
  text("BEST Score: " + bestScore, 400, 500);
  fill(255);
  tactileRect(300, 550, 200, 100, white);
  textSize(25);
  fill(black);
  text("Play Again?", 400, 600);
}
void gameoverClicks() {
}
