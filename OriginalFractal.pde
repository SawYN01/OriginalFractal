
public void setup() {
  size(800,800);
  rectMode(CENTER);
  //frameRate(2);
}

public void draw() {
  background(255);
  myFractal(400,400,mouseY);
}


public void myFractal(int x, int y, int siz)
{ 
  if(siz< 20) 
    rect(x,y,siz, siz);
  else {
    //fill(211,166,2);
    fill(190+(int)(Math.random()*20), 146 + (int)(Math.random()*20), (int)(Math.random()*2));
    myFractal(x+siz/4, y, siz/2);
    myFractal(x-siz/4, y, siz/2);
    myFractal(x, y+siz/4, siz/2);
    myFractal(x,y-siz/4, siz/2);
  }
}
