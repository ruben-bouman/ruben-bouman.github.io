int gameover;
float speedx = random(3, 7);
float speedy = random(3, 7);
final float side = 15;
final float radius = 1.5 * side;

void setup() {
  size(500, 500);
  noStroke();
  smooth();
}


float posX = 80;
float posY = 38;

void draw() {

  float t = mouseX;

  background(255);
  fill(255, 10, 60); 


  if (t > 400)
  {
    t = 400;
  }
  rect(t, 475, 100, 25);
  ellipse(posX, posY, side, side);  
  posX = posX + speedx;
  posY = posY + speedy;

  if (posX + radius > 500 || posX - radius < 0) {
    speedx *= -1;
  }
  if ((posY + radius > 500 && posX > t && posX < t + 100 )|| posY - radius < 0) {
    speedy *= -1;
  }
  if (posY >= 500) {
    fill(200,200,200);
    textSize(80);
    text("game over", 0, 250);
  }
}