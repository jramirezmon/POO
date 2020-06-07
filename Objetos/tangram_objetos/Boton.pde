public class Boton extends Figura {
  String valor;
  color relleno;
  Boton(color tempC, float tempXpos, float tempYpos, float tempr, float temps, String nombre) {
    super(tempC, tempXpos, tempYpos, tempr, temps);
    valor = nombre;
    relleno = tempC;
  }
  void drawFigura() {
    rotate(radians(30));
    fill(relleno);
    if (seleccion_centro()) {
      strokeWeight(5);
      stroke(255);
    } else {
      noStroke();
    }
    square(0, 0, 110);
    push();
    translate(15, 85);
    rotate(radians(-30));
    if (seleccion_centro()) {
      fill(0);
      textSize(25);
      text(valor, 2, 2);
    }
    fill(46, 134, 193 );
    textSize(25);
    text(valor, 0, 0);
    pop();
  }
}
