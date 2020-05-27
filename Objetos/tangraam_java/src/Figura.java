import static processing.core.PApplet.radians;


abstract class Figura {
    //atributos
    int c;
    float[] prs = {0, 0, 0, 0};
    boolean f = false;

    Figura(int tempC, float tempXpos, float tempYpos, float tempr, float temps) {
        c = tempC;
        prs[0] = tempXpos;
        prs[1] = tempYpos;
        prs[2] = tempr;
        prs[3] = temps;
    }

    void display() {
        MainClass.processing.push();
        MainClass.processing.stroke(0);
        MainClass.processing.fill(c);
        MainClass.processing.translate(prs[0], prs[1]);
        MainClass.processing.scale(prs[3]);
        MainClass.processing.rotate(radians(prs[2]));
        drawFigura();
        MainClass.processing.pop();
    }

    abstract void drawFigura();

    void move(float x, float y, float r) {
        prs[0] = prs[0] + x;
        prs[1] = prs[1] + y;
        prs[2] = prs[2] + r;
    }

    boolean seleccion(int cmouse) {
        if (cmouse == c) {
            f = true;
            return f;
        } else {
            f = false;
            return f;
        }
    }

    int getColor() {
        return c;
    }

}



