int result = 0;

int x = 0;
int y = 0;
void setup()
{
  background(100, 200, 200);
  size(600, 600);
  noLoop();
}
void draw()
{
  background(100, 200, 200);
  int finalResult = 0;
  for (int y=10; y <= 530; y = y + 60 )
  {
    for (int x=5; x <= 600; x = x + 60)
    {
      Die bob = new Die(x, y);
      bob.show();
      finalResult = finalResult + result;
    }
  }
  textSize(35);
  text("Total Roll: " + finalResult, 50, 580);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }

  void roll()
  {
    double dieRoll = 0;
    dieRoll = Math.random();
    if (dieRoll < 0.16)
    {
      result = 1;
    } else if (dieRoll < 0.32)
    {
      result = 2;
    } else if (dieRoll < 0.48)
    {
      result = 3;
    } else if (dieRoll < 0.64)
    {
      result = 4;
    } else if (dieRoll < 0.8)
    {
      result = 5;
    } else if (dieRoll < 0.96)
    {
      result = 6;
    }
  }
  void show()
  {
    fill(255);
    rect(myX, myY, 50, 50, 10);

    if (result == 1)
    {
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else if (result == 2)
    {
      fill(0);
      ellipse(myX + 15, myY + 15, 10, 10);
      fill(0);
      ellipse(myX + 35, myY + 35, 10, 10);
    } else if (result == 3)
    {
      fill(0);
      ellipse(myX + 38, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 38, 10, 10);
    } else if (result == 4)
    {
      fill(0);
      ellipse(myX + 38, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 38, 10, 10);
      fill(0);
      ellipse(myX + 38, myY + 38, 10, 10);
    } else if (result == 5)
    {
      fill(0);
      ellipse(myX + 38, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 38, 10, 10);
      fill(0);
      ellipse(myX + 38, myY + 38, 10, 10);
      fill(0);
      ellipse(myX + 25, myY + 25, 10, 10);
    } else 
    {
      fill(0);
      ellipse(myX + 38, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 12, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 38, 10, 10);
      fill(0);
      ellipse(myX + 38, myY + 38, 10, 10);
      fill(0);
      ellipse(myX + 12, myY + 25, 10, 10);
      fill(0);
      ellipse(myX + 38, myY + 25, 10, 10);
    }
  }
}