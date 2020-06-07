import static processing.core.PApplet.radians;
abstract class Figura {
    //atributos
    int color_Piezas;
    int s =1;
    float [] prs = {0, 0, 0, 0};
    boolean e=false;
    Figura(int tempC, float tempXpos, float tempYpos, float tempr, float temps) {
        color_Piezas = tempC;
        prs[0]= tempXpos;
        prs[1]= tempYpos;
        prs[2]= tempr;
        prs[3]=temps;
    }
    void display() {
        Tangram.processing.push();
        Tangram.processing.fill(color_Piezas);
        Tangram.processing.translate(prs[0], prs[1]);
        Tangram.processing.rotate(radians(prs[2]));
        Tangram.processing.scale(prs[3]);
        Tangram.processing.stroke(0);
        drawFigura();
        Tangram.processing.pop();
    }
    abstract void drawFigura();

    void move(float x, float y, float r, int st) {
        prs[0] = prs[0]+x;
        prs[1] = prs[1]+y;
        prs[2] = prs[2]+r;
        prs[3] = prs[3]*st;
        s = st;
    }
    boolean seleccion(int cmouse) {
        if (cmouse ==color_Piezas ) {
            e=true;
            return e ;
        } else {
            e=false;
            return e ;
        }
    }
    boolean seleccion_centro() {
        if (Tangram.processing.dist(Tangram.processing.mouseX, Tangram.processing.mouseY, prs[0], prs[1])<65) {
            e=true;
            return e ;
        } else {
            e=false;
            return e ;
        }
    }
    int getColor() {
        return color_Piezas ;
    }
    float[] getprs() {
        return prs;
    }
}



