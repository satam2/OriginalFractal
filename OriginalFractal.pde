public void setup(){
  size(500,500);
  rectMode(CENTER);
  noStroke();
  fill(255);
  background(0);
}

public void draw(){
  myFractal(250,250,300);
}

public void myFractal(int x, int y, int siz){
  if(siz<10)
        rect(x,y,siz, siz);
    else{
        myFractal(x-2,y,siz/2);
        myFractal(x+2,y,siz/2);
    }
}
