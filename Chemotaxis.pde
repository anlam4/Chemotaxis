Bacteria[] colony = new Bacteria[160]; 
int population = 5;
 void setup()   
 {     
     size(600,600);
     for(i = 0; i < population; i++)  //Start with 5 bacteria
     {
        colony[i] = new Bacteria(300,300);
     }
 }   
 void draw()   
 {   
   while(population < 161)  //Stops reproduction when there are 160 bacteria
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
        colony[i] = new Bacteria(colony[i-population].x,colony[i-population].y);
     }
     population = population * 2;
   }
 } 
 class Bacteria    
 {
    int x, y, myColor;
    Bacteria(myX,myY)
    {
       x = myX;
       y = myY;
       myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    }
    void show()
    {
       ellipse();
    }
    void move()
    {
    }
 }    
