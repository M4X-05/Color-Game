//Max Dorrington
//Sept 27, 2022
//The Color Game

//song
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer song;
AudioPlayer success;
AudioPlayer fail;
//modes
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;
//gif, font, int, timer, score
PImage[] gif;
PImage img;
PFont rivoluzione;
int numberOfFrames;
float yoff = 0.0;
int f;
int p;
float angle;
int timer;
int score;
int bestScore;
float angleRotate = 0.0;
//Colors
color white = #FFFAFA;
color navy = #073b4c;
color pink = #E34ED2;
color yellow = #FAFF05;
color orange = #FFA005;
color black = #000000;
color red = #ff0000;
color green = #00ff00;
color blue = #0000ff;

void setup() {
  size(800, 800);
  timer = 0;
  angle = 0;
  redCar = 100;
  strokeWeight(4);
  minim = new Minim(this);
  song = minim.loadFile("WARNING (Sped Up).mp3");
  song.loop();
  success = minim.loadFile("SUCCESS.wav");
  fail = minim.loadFile("FAILURE.wav");
  img = loadImage("redcar.png");
  rivoluzione = createFont("rivoluzione.ttf", 80);
  numberOfFrames = 30;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.03s.gif");
    i = i + 1;
  }
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode Error: Mode is " + mode);
  }
  println(score);
}
