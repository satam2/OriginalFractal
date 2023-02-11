public void setup(){
  noFill();
  strokeWeight(2);
  background(0);
}
  
int s = 0;
int c = 5;
int change = 1;
float rot = 0;
public void draw(){
  stroke(0,0,c);
  c+= change;
  if(c >= 255)
    change = -1;
  else if(c <= 5)
    change = 1;
  if(s<1000){
    background(0);
    pushMatrix();
    translate(250,250);
    rotate(rot);
    myFractal(0,0,s);
    popMatrix();
    rot+=.005;
    s++;
    if(s >= 999)
      s = 0;
  }
 }
  
public void myFractal(int x, int y, int siz){
  beginShape();
  vertex(x,y+siz);
  vertex(x,y+siz*2);
  vertex(x+siz,y+siz*2);
  vertex(x+siz,y);
  vertex(x+siz*2,y);
  vertex(x+siz*2,y-siz);
  vertex(x,y-siz);
  vertex(x,y-siz*2);
  vertex(x-siz,y-siz*2);
  vertex(x-siz,y);
  vertex(x-siz*2,y);
  vertex(x-siz*2,y+siz);
  vertex(x,y+siz);
  endShape();
  if(siz>5)
      myFractal(x,y,siz-15);
   }
}
