public void setup()
{
  size(650,650);
  background(0,50,100);
}
public void draw()
{
  sierpinski(50,600,550);
}
public void mouseDragged()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
  if(len<50){
    fill(150,150,230);
    stroke(150,150,230);
    strokeWeight(1);
    triangle(x,y,x+len/2,y-len/3,x+len,y);
    stroke(100,100,200);
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
