
abstract class Figura{
//atributos
color c;
float [] prs = {0,0,0,0};
boolean f=false;
Figura(color tempC, float tempXpos, float tempYpos, float tempr, float temps) { 
    c = tempC;
    prs[0]= tempXpos;
    prs[1]= tempYpos;
    prs[2]= tempr;
    prs[3]=temps;
  }
   void display() {
   push();
    stroke(0);
    fill(c);
    translate(prs[0],prs[1]);
    scale(prs[3]);
    rotate(radians(prs[2]));
    drawFigura();
   pop();
  }
   abstract void drawFigura();

  void move(float x,float y ,float r) {
    prs[0] = prs[0]+x;
    prs[1] = prs[1]+y;
    prs[2] = prs[2]+r;
  }
  boolean seleccion(color cmouse) {
    if(cmouse ==c ){
      f=true;
      return f ;
    }
    else {
      f=false;
      return f ;
    }
  }
   color getColor() {
    return c ;
  }
  
}
