int a = 0;
int b = 0;
int c = 100;
int d = 100;
float angleT = 0;
float angleR = 0;
void pintarTriangulo(){
  if((dist(a,b,mouseX,mouseY)<50) && (keyPressed)){
    angleT = angleT+0.026;
  }
  
  if((dist(a,b,mouseX,mouseY)<50) && (mousePressed)){  
    a = mouseX;
    b = mouseY;

  }
  push();
  translate(a,b);
  rotate(angleT);
  triangle(0,0,100,0,0,100);
  pop();
}
void pintarRectangulo(){
  if((dist(c,d,mouseX,mouseY)<50) && (keyPressed)){
    angleR = angleR+0.026;
  }
  
  if((dist(c,d,mouseX,mouseY)<50) && (mousePressed)){  
    c = mouseX;
    d = mouseY;

  }
  push();
  translate(c,d);
  rotate(angleR);
  fill(250,130,200);
  rect(0,0,60,40);
  pop();

}
void pintarPiezas(){
  pintarTriangulo();
  pintarRectangulo();
}
void setup(){
  size(400,300,P2D);
}
void draw(){
  background(220,150,50);
  pintarPiezas();
}
