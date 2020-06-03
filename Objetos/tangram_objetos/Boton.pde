public class Boton extends Figura {
  Boton(color tempC, float tempXpos, float tempYpos, float tempr, float temps) {
    super(tempC, tempXpos, tempYpos, tempr, temps);
  }
  void drawFigura() {
    strokeWeight(6);
    circle(0, 0, 130);
    fill(255, 117, 20);
    strokeWeight(4);
    triangle(-50, -(50*sqrt(3))/2+15, 50, -(50*sqrt(3))/2+15, 0, (50*sqrt(3))/2+15);
  }
}
