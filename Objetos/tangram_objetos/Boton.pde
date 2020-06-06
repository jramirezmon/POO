public class Boton extends Figura {
  String valor;
  Boton(color tempC, float tempXpos, float tempYpos, float tempr, float temps, String nombre) {
    super(tempC, tempXpos, tempYpos, tempr, temps);
    valor = nombre;
  }
  void drawFigura() {
    rotate(radians(30));
    fill(160, 52, 114);
    if (seleccion_centro()){
      strokeWeight(5);
      stroke(255);
    }
    else{
      noStroke();
    }
    square(0,0,100);
    push();
    translate(10,75);
    rotate(radians(-30));
    if (seleccion_centro()){
        fill(0);
        textSize(25);
        text(valor,2,2);
    }
    fill(46, 134, 193 );
    textSize(25);
    text(valor,0,0);
    pop();
  }

}
