int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300,300);
  strokeWeight(2.5);
  background(0);
  while (endX < 301) {
    draw();
}
}
void draw()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  line(startX,startY,endX,endY);
  endX = startX + (int)(Math.random()*10);
  endY = startY + (int)(Math.random()*18)-9;
  startX = endX;
  startY = endY;
}
void mousePressed()
{
   startX = 0;
   startY = 150;
   endX = 0;
   endY = 150;
}