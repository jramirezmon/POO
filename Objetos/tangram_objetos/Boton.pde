public class Boton extends Figura {
  String valor;
  Boton(color tempC, float tempXpos, float tempYpos, float tempr, float temps, String nombre) {
    super(tempC, tempXpos, tempYpos, tempr, temps);
    valor = nombre;
  }
  void drawFigura() {
    if (seleccion_centro()) {
      strokeWeight(5);
      stroke(255);
    } else {
      noStroke();
    }
    rectMode(CENTER);
    rect(0, 0, 110, 110);
    translate(-40, 30);
    rotate(radians(-prs[2]));
    if (seleccion_centro()) {
      fill(0);
      textSize(25);
      text(valor, 2, 2);
    }
    fill(46, 134, 193 );
    textSize(25);
    text(valor, 0, 0);
  }
}
