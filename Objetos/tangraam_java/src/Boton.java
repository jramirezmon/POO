import static processing.core.PApplet.radians;
public class Boton extends Figura {
    String valor;
    Boton(int tempC, float tempXpos, float tempYpos, float tempr, float temps, String nombre) {
        super(tempC, tempXpos, tempYpos, tempr, temps);
        valor = nombre;
    }
    void drawFigura() {
        if (seleccion_centro()) {
            Tangram.processing.strokeWeight(5);
            Tangram.processing.stroke(255);
        } else {
            Tangram.processing.noStroke();
        }
        Tangram.processing.rectMode(Tangram.processing.CENTER);
        Tangram.processing.rect(0,0,110,110);
        Tangram.processing.translate(-40, 30);
        Tangram.processing.rotate(radians(-prs[2]));
        if (seleccion_centro()) {
            Tangram.processing.fill(0);
            Tangram.processing.textSize(25);
            Tangram.processing.text(valor, 2, 2);
        }
        Tangram.processing.fill(46, 134, 193 );
        Tangram.processing.textSize(25);
        Tangram.processing.text(valor, 0, 0);
    }
}
