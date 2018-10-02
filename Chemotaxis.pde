Bacteria[] colony = new Bacteria[2];  //Still need to decide size of array
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
     for(i = 0; i < colony.length; i++)
     {
        colony[i].show();
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
 }    
