int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0);
}
void draw()
{
  noStroke();
  //clouds for the thunderstorm 
  fill(255);
  for (int x=100; x<=200; x+=10)
    ellipse (x, 20, 40, 40);
  for (int x=110; x<+190; x+=10)
    ellipse (x, 30, 40, 40);
  //fading effect for thunder and ghost 
  fill (0, 20);
  rect(0, 0, 300, 300);
  //the use of Math.random() to create random lightning 
  endX = startX + (int)(Math.random()*19) - 9;
  endY = startY + (int)(Math.random()*10);
  stroke(255, 255, 0);
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
  //Ghost that appears when you click 
  fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  noStroke();
  ellipse(150,150, 40, 40);
  rect(135, 160, 30, 60);
  fill(0);
  ellipse(140, 150, 5, 5);
  ellipse(160, 150, 5, 5);
  ellipse(150, 170, 10, 20);
  redraw();
}

