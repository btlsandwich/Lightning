int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int sX = 350;
int sY = 0;
int eX = 350;
int eY = 0;
void setup()
{
  size(500,500);
  strokeWeight(2.5);
  background(0);
  while ((endY < 501 && endY > 0) && (eY < 501 && eY > 0)) {
    draw();
}
}
void draw()
{
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  line(startX,startY,endX,endY);
  line(startY-50,startX,endY-50,endX);
  line(startX*1.5,startY*2,endX*1.5,endY*2);
  endX = startX + (int)(Math.random()*18)-9;
  endY = startY + (int)(Math.random()*10);
  startX = endX;
  startY = endY;
  line(sX,sY,eX,eY);
  line(sY,sX+30,eY,eX+30);
  eX = sX + (int)(Math.random()*20)-10;
  eY = sY + (int)(Math.random()*10);
  sX = eX;
  sY = eY;
}
void mousePressed()
{
   startX = 150;
   startY = 0;
   endX = 150;
   endY = 0;
   sX = 350;
   sY = 0;
   eX = 350;
   eY = 0;
   background(0);
}
