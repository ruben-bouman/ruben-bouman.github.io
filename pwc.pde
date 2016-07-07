PImage photo;
import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  photo = loadImage("mello.png");
  file = new SoundFile(this, "keep it mello.mp3");
  file.play();
}      

void draw() {
background(0);
  image(photo, 220, 80 );
}