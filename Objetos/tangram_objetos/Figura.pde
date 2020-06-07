abstract class Figura {
  //atributos
  color color_Piezas;
  int s =1;
  float [] prs = {0, 0, 0, 0};
  boolean e=false;
  Figura(color tempC, float tempXpos, float tempYpos, float tempr, float temps) { 
    color_Piezas = tempC;
    prs[0]= tempXpos;
    prs[1]= tempYpos;
    prs[2]= tempr;
    prs[3]=temps;
  }
  void display() {
    push(); 
    fill(color_Piezas);
    translate(prs[0], prs[1]);
    rotate(radians(prs[2]));
    scale(prs[3]);
    stroke(0);
    drawFigura();
    pop();
  }
  abstract void drawFigura();

  void move(float x, float y, float r, int st) {
    prs[0] = prs[0]+x;
    prs[1] = prs[1]+y;
    prs[2] = prs[2]+r;
    prs[3] = prs[3]*st;
    s = st;
  }
  boolean seleccion(color cmouse) {
    if (cmouse ==color_Piezas ) {
      e=true;
      return e ;
    } else {
      e=false;
      return e ;
    }
  }
  boolean seleccion_centro() {
    if (dist(mouseX, mouseY, prs[0], prs[1])<130) {
      e=true;
      return e ;
    } else {
      e=false;
      return e ;
    }
  }
  color getColor() {
    return color_Piezas ;
  }
  float[] getprs() {
    return prs;
  }
}
