int x = 100;
int y = 100;
int sz =100;

void setup(){
  size(400,300);
}
void draw(){
  background(220,150,50);
  ellipse(x,y,sz,sz);
  if((dist(x,y,mouseX,mouseY)<sz/2) && (mousePressed)){
      x = mouseX;
      y = mouseY;
  }
}
