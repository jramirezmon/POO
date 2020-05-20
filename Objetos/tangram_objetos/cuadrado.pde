public class Cuadrado extends Figura{
  Cuadrado(color tempC, float tempXpos, float tempYpos, float tempr, float temps){
    super(tempC,tempXpos,tempYpos,tempr,temps);
    
  }
  void drawFigura(){
    rect(-25,-25,50,50);
  }
}
