public void setup()
{
  size(650,650);
  background(0,50,100);
  sierpinski(50,600,550);
}
public void draw()
{
  
}
public void mousePressed()//optional
{
  background(0);
  sierpinski(175,475,300);
}
void keyPressed()
{
  background(0,50,100);
  sierpinski(50,600,550);
}
public void sierpinski(int x, int y, int len) 
{
  if(len<=50){
    fill(150,190,255);
    stroke(150,190,255);
    strokeWeight(1);
    triangle(x,y,x+len/2,y-len/3,x+len,y);
    stroke(150,190,255);
    strokeWeight(3);
    noFill();
    triangle(x,y,x+len/2,y-len,x+len,y);
  }

  else{
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
