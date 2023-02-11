public void setup() {
  size(800,800);
  rectMode(CENTER);
  frameRate(2);
}
public void draw() { 
  background(199,222,209);
    
  largeFractal(400,400,900);
  
  outFractal(100,100,150);
  inFractal(100,100,100);
  
  outFractal(250,250,150);
  inFractal(250,250,100);
  
  outFractal(400,400,150);
  inFractal(400,400,100);
  
  outFractal(550,550,150);
  inFractal(550,550,100);
  
  outFractal(700,700,150);
  inFractal(700,700,100);
  
  outFractal(700,100,150);
  inFractal(700,100,100);
  
  outFractal(550,250,150);
  inFractal(550,250,100);
  
  outFractal(700,400,150);
  inFractal(700,400,100);
  
  outFractal(100,400,150);
  inFractal(100,400,100);
  
  outFractal(400,100,150);
  inFractal(400,100,100);
  
  outFractal(400,700,150);
  inFractal(400,700,100);
  
  outFractal(100,700,150);
  inFractal(100,700,100);
  
  outFractal(250,550,150);
  inFractal(250,550,100);

}
public void largeFractal(int x, int y, float len) {
  fill(36, 90, 33,110);
    ellipse(x,y,len,len);
  if(len >100)
    largeFractal(x,y,6.4*len/10);
}

public void outFractal(int x, int y, int rad) {
   fill(255);
   ellipse(x,y,rad,rad);
}

public void inFractal(int x, int y, int siz) {
  //99, 103, 101
  fill((int)(Math.random()*90)+10);
  beginShape();
     vertex(x-siz/8, y+siz/4);
     vertex(x+siz/8, y+siz/4);
     vertex(x+siz/4, y);
     vertex(x+siz/8, y-siz/4);
     vertex(x-siz/8, y-siz/4);
     vertex(x-siz/4, y);
  endShape(CLOSE);
  
  if(siz>90) {
    inFractal(x+2*siz/5,y+siz/4,5*siz/6);
    inFractal(x-2*siz/5,y-siz/4,5*siz/6);
    inFractal(x+2*siz/5,y-siz/4,5*siz/6);
    inFractal(x-2*siz/5,y+siz/4,5*siz/6);
    inFractal(x,y+siz/2,5*siz/6);
    inFractal(x,y-siz/2,5*siz/6); 
  }
}


