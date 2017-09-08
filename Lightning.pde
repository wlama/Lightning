int startX = 600;
int startY = 400;
int endX = 0;
int endY = 0;

void setup() {
  strokeWeight(4);
  background(0, 0, 0);
  size(600, 400);
  frameRate(1000);
}

void draw() {
  cloud();
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endY <= 400) {
    endX = startX + (int)(Math.random()*75)-37;
    endY = startY + (int)(Math.random()*19);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void cloud() {
  fill(128, 128, 128);
  stroke(0, 0, 0);
  ellipse(175, 60, 150, 125);
  fill(128, 128, 128);
  stroke(0, 0, 0);
  ellipse(425, 60, 150, 125);
  fill(128, 128, 128);
  noStroke();
  ellipse(300, 60, 200, 150);
  fill(128, 128, 128);
  noStroke();
  ellipse(75, 60, 150, 125);
  fill(128, 128, 128);
  noStroke();
  ellipse(525, 60, 150, 125);
}

void mousePressed() {
  background(0, 0, 0);
  cloud();
  startX = 300;
  startY = 135;
  endX = 0;
  endY = 0;
}