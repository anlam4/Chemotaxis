Bacteria[] colony = new Bacteria[160]; 
int population = 5;
int index;
 void setup()   
 {     
     size(600,600);
     for(i = 0; i < population; i++)  //Start with 5 bacteria
     {
        int rgb = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
        colony[i] = new Bacteria(300,300,rgb);
     }
 }   
 while(population < 161)
 {
   void draw()   
   {   
     int counter = 0;
     while(counter <= 200)
     {
        for(i = 0; i < population; i++)
        {
           colony[i].show();
           colony[i].move();
        }
        counter = counter + 1;
     }
     for(i = population; i < population*2; i++)  //Continues adding to array
     {
        index = i - population;
        colony[i] = new Bacteria(colony[index].x,colony[index].y,colony[index].myColor);
     }
     population = population * 2;  //Sets population number of objects in array
   } 
 }
 class Bacteria    
 {
    int x, y, myColor;
    Bacteria(myX,myY,rgb)
    {
       x = myX;
       y = myY;
       myColor = rgb;
    }
    void show()
    {
       ellipse(x,y,20,40);
       if(mouseX > x)
         x = x + (int)(Math.random()*10)-2;
       else
         x = x + (int)(Math.random()*10)-8;
       if(mouseY > y)
         y = y + (int)(Math.random()*10)-2;
       else
         y = y + (int)(Math.random()*10)-8;
    }
 }    
