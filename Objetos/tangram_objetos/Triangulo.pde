public class Triangulo extends Figura{
  Triangulo(color tempC, float tempXpos, float tempYpos, float tempr, float temps){
    super(tempC,tempXpos,tempYpos,tempr,temps);
    
  }
  void drawFigura(){
    triangle(-30,-30,70,-30,-30,70);
  }
}
