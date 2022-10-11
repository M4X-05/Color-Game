int randomWord = (int) random(0, 6); //<>//
int randomColor = (int) random(0, 6);
int randomMatch = (int) random (0, 2);
float redCar;
String[] words = {"RED", "GREEN", "BLUE", "PINK", "YELLOW", "ORANGE"};
color[] colors = {red, green, blue, pink, yellow, orange};

void game() {
    if (randomMatch == 1) {
    randomColor = randomWord;
  }
  while (randomMatch == 0 && randomWord == randomColor) {
      randomWord = (int) random(0, 6);
      randomColor = (int) random(0, 6);
    }
  background(black);
  rect(0, 0, 800, 800);
  timer++;
  tactileRect(0, 0, 400, 800, white);
  tactileRect(400, 0, 400, 800, black);
  fill(red);
  fill(black);
  text("MATCH", 200, 300);
  fill(white);
  text("NO MATCH", 600, 300);
  textSize(80);
  timeCar();
  if (timer == 1) {
    redCar = 0;
  } else {
  redCar = redCar + 3;  
  }
  if (timer < 200) {
    fill(colors[randomColor]);
    text(words[randomWord], width/2, height/2);
  }
  if (timer > 200) {
    mode = GAMEOVER;
  }
}
void timeCar() {
  image(img, 350, redCar, img.width/3, img.height/3);
}
void gameClicks() {
  randoms();
  mode = GAME;
}
void randoms() {
  randomMatch = (int) random (0, 2);
}
