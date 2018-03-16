int x;
int y;
int xVel = 1;
int yVel = 2;
int dia;

void setup()
{
  fill(0,127,0);
  size(1500,1500);
  noStroke();
  x = width/2;
  y = height/2;
  dia = 150;
  frameRate(120);
}

void draw()
{
    fill(0,127,0);
    rect(0,0,width,height);
    fill(255);
    ellipse(x,y,dia,dia);
    fill(255);
    /*if((x+25) > width)
    {
      xVel =-1;
    }
    if((x-25) < 0)
    {
     xVel = 1; 
    }*/
    if((x>width-(dia/2))||x<0+dia/2)
    {
      xVel = -xVel;
    }
    if((y>height-dia/2)||y<0+dia/2)
    {
      yVel = -yVel;
    }
    x=x+xVel;
    y=y+yVel;
      
  }