public class Imagen extends Figura {
  PImage titulo;
  Imagen(color tempC, float tempXpos, float tempYpos, float tempr, float temps,String nombreImagen) {
    super(tempC, tempXpos, tempYpos, tempr, temps);
    titulo = loadImage(nombreImagen+".png");
  }
  void drawFigura() {
    image(titulo, (width/2)-332, 40);
  }
}
