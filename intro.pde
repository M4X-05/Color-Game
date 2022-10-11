void intro() {
  //gif
  image(gif[f], 0, 0, width, height);
  tactileRect(300, 380, 200, 100, pink);
  fill(white);
  textAlign(CENTER, CENTER);
  textFont(rivoluzione);
  textSize(50);
  fill(white);
  text("Start", 400, 425);
  //rotate text
  pushMatrix();
  translate(400,300);
  textSize(100);
  rotate(radians(angleRotate));
  fill(black);
  text("COLOR GAME", 0, 0);
  fill(pink);
  text("COLOR GAME", 0, 10);
  popMatrix(); 
  angleRotate += 1;
  //additional text
  fill(white);
  textSize(20);
  text("Developed by Max Dorrington", 150, 15);
  //frames
  if (frameCount % 1 == 0) f = f + 5;
  if (f == numberOfFrames) f = 0;
}

void introClicks() {
  mode = INTRO;
}
