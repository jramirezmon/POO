public class Cuadrado extends Figura {
    Cuadrado(int tempC, float tempXpos, float tempYpos, float tempr, float temps) {
        super(tempC, tempXpos, tempYpos, tempr, temps);

    }

    void drawFigura() {
        MainClass.processing.square(-25,-25,50);
    }
}
