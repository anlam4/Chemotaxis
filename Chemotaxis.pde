Bacteria[] colony = new Bacteria[5]; 
 void setup()   
 {     
     size(600,600);
     for(i = 0; i < colony.length; i++)  //Fills array
     {
        colony[i] = new Bacteria(300,300);
     }
 }   
 void draw()   
 {    
     walker(colony);
     if(colony[i].counter % 200 == 0)
     {
        Bacteria[] offspring
     }
 }  
 void walker(Bacteria[] culture)  //cylcles through any array
 {
     for(i = 0; i < culture.length; i++)
     {
        culture[i].show();
        culture[i].move();
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
    Bacteria reproduce() //new bacteria has same prop
    {
       Bacteria sisterCell = new Bacteria(x,y,myColor);
       return sisterCell;
    }
 }    
