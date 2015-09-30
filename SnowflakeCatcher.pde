Snowflake [] frosty = new Snowflake[800];
void setup()
{
  size(500,500);
  frameRate(60);
  background(0);
  for(int i = 0; i < frosty.length; i++)
  {
    frosty[i] = new Snowflake();
  }
  //your code here
}
void draw()
{
  for(int i=0; i < frosty.length;i++)
  {
    frosty[i].erase();
    frosty[i].lookDown();
    frosty[i].move();
    frosty[i].wrap();
    frosty[i].show();
  }
  fill(0);
  rect(0,495,500,20);
  //your code here
}
void mouseDragged()
{
  //your code here
  fill((int)(Math.random()*255),(int)(Math.random()*255),255);
  noStroke();
  ellipse(mouseX,mouseY,15,15);
}

class Snowflake
{
  //class member variable declarations
  boolean isMoving;
  int myX,myY;
  Snowflake()
  {
    //class member variable initializations
    // myX =x;
    // myY =y;
    myX =(int)(Math.random()*500);
    myY =(int)(Math.random()*500);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255);
    stroke(0);
    ellipse(myX,myY,5,5);
  }
  void lookDown()
  {
    //your code here
    if(myY > 0 && myY < 501 && get(myX,myY + 5) != color(0,0,0))
      isMoving = false;
      else 
      isMoving = true;
  }
  void erase()
  {
    //your code here
    fill(0);
    ellipse(myX,myY,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving == true)
    {
      myY= myY + 1;
    }
  }
  void wrap()
  {
    //your code here
    if( myY > 494)
    {
      myY = 0;
      myX = (int)(Math.random()*500);
    }
  }
}


