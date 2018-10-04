Bacteria[] colony = new Bacteria[320]; 
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
     int counter = 0;
     while(counter <= 200)
     {
        for(i = 0; i < population; i++)
        {
           culture[i].show();
           culture[i].move();
        }
        counter = counter + 1;
     }
     
     Bacteria[] offspring
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
    Bacteria reproduce() //new bacteria has same prop
    {
       Bacteria sisterCell = new Bacteria(x,y,myColor);
       return sisterCell;
    }
 }    
