public class Paralelogramo extends Figura{
  Paralelogramo(color tempC, float tempXpos, float tempYpos, float tempr, float temps){
    super(tempC,tempXpos,tempYpos,tempr,temps);
  }
  void drawFigura(){
    quad(-50,-25,0,-25,50,25,0,25);
  }
}
