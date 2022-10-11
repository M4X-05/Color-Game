boolean touchingRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    return true;
  } else {
    return false;
  }
}
void tactileRect(int x, int y, int w, int h, color f) {
  fill(f);
  if (touchingRect(x, y, w, h)) {
    stroke(white);
  } else {
    stroke(black);
  }
  rect(x, y, w, h);
}

void keyPressed() {
  randoms();
  
  if (mode == GAME) {
    if (keyCode == LEFT) {
      if (randomColor == randomWord) {
        score = score + 1;
        timer = 0;
        success.rewind();
        success.play();
      }
      if (randomColor != randomWord) {
        mode = GAMEOVER;
        fail.rewind();
        fail.play();
      } else {
        randomWord = (int) random(0, 6);
        randomColor = (int) random(0, 6);
        randoms();
      }
    }
    if (mode == GAME) {
      if (keyCode == RIGHT) {
        if (randomColor != randomWord) {
          timer = 0;
          score = score + 1;
          success.rewind();
          success.play();
        }
        if (randomColor == randomWord) {
          mode = GAMEOVER;
          fail.rewind();
          fail.play();
        } else {
          randomWord = (int) random(0, 6);
          randomColor = (int) random(0, 6);
          randoms();
        }
      }
    }
  }
}


void mousePressed() {
  //DONT CHANGE ANYTHING
  if (mode == GAMEOVER) {
    if (touchingRect(300, 550, 200, 100)) {
      mode = INTRO;
      score = 0;
    }
  }
  if (mode == GAME) {
    if (touchingRect(0, 0, 400, 800)) {
      if (randomColor == randomWord) {
        score = score + 1;
        timer = 0;
        success.rewind();
        success.play();
      }
      if (randomColor != randomWord) {
        mode = GAMEOVER;
        fail.rewind();
        fail.play();
      } else {
        randomWord = (int) random(0, 6);
        randomColor = (int) random(0, 6);
        randoms();
      }
    }
    if (mode == GAME) {
      if (touchingRect(400, 0, 400, 800)) {
        if (randomColor != randomWord) {
          timer = 0;
          score = score + 1;
          success.rewind();
          success.play();
        }
        if (randomColor == randomWord) {
          mode = GAMEOVER;
          fail.rewind();
          fail.play();
        } else {
          randomWord = (int) random(0, 6);
          randomColor = (int) random(0, 6);
          randoms();
        }
      }
    }
  }

  if (mode == INTRO) {
    if (touchingRect(300, 380, 200, 100)) {
      timer = 0;
      mode = GAME;
    }
  }
}
