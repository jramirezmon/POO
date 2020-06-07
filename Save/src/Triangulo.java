public class Triangulo extends Figura {
    Triangulo(int tempC, float tempXpos, float tempYpos, float tempr, float temps) {
        super(tempC, tempXpos, tempYpos, tempr, temps);
    }

    void drawFigura() {
        MainClass.processing.triangle(-30, -30, 70, -30, -30, 70);
    }
}

