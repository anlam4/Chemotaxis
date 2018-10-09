Bacteria[] colony = new Bacteria[640]; 
int population = 5;
int index, newX, newY, rgb, counter;
void setup()   
{     
  size(600, 600);
  for (int i = 0; i < population; i++)  //Start with 5 bacteria
  {
    rgb = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    colony[i] = new Bacteria((int)(Math.random()*500), (int)(Math.random()*500), rgb);
  }
  textSize(30);
}   
void draw()   
{   
  background(20);
  fill(255);
  text("You", mouseX, mouseY);
  for (int i = 0; i < population; i++)
  {
    colony[i].show();
  }
  counter = counter + 1;

  if (counter == 250 && (population*2) < 641)
  {
    for (int i = population; i < population*2; i++)  //Continues adding to array
    {
      index = i - population;
      newX = colony[index].x;
      newY = colony[index].y;
      rgb = colony[index].myColor;
      colony[i] = new Bacteria(newX, newY, rgb);
    }
    population = population * 2;  //Sets population number of objects in array
    counter = 0;
  }
}
class Bacteria    
{
  int x, y, myColor;
  Bacteria(int myX, int myY, int rgb)
  {
    x = myX;
    y = myY;
    myColor = rgb;
  }
  void show()
  {
    fill(myColor);
    ellipse(x, y, 20, 40);
    if (mouseX > x)
      x = x + (int)(Math.random()*10)-2;
    else
      x = x + (int)(Math.random()*10)-8;
    if (mouseY > y)
      y = y + (int)(Math.random()*10)-2;
    else
      y = y + (int)(Math.random()*10)-8;
  }
}
