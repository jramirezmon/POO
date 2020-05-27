import processing.core.PApplet;

public class MainClass extends PApplet {
    public static PApplet processing;

    public static void main(String[] passedArgs) {
        String[] appletArgs = new String[]{"MainClass"};
        PApplet.main(appletArgs);
    }

    public void setup() {
        processing = this;
    }

    Figura[] figuras;

    public void settings() {
        size(800, 800);
        figuras = new Figura[7];
        // Parameters go inside the parentheses when the object is constructed.
        figuras[0] = new Triangulo(color(0, 0, 255), 100, 500, 1, 1);
        figuras[1] = new Triangulo(color(255, 0, 0), 100, 500, 1, 1);
        figuras[2] = new Triangulo(color(0, 255, 0), 300, 500, 1, 0.75f);
        figuras[3] = new Triangulo(color(255, 0, 255), 100, 500, 1, 0.5f);
        figuras[4] = new Triangulo(color(0, 255, 255), 200, 500, 1, 0.5f);
        figuras[5] = new Cuadrado(color(255, 255, 0), 200, 500, 0, 1);
        figuras[6] = new Paralelogramo(color(100, 100, 255), 200, 500, 0, 1);
    }

    public void draw() {
        background(255);
        for (Figura figura : figuras) {
            figura.display();
        }
        if (keyPressed) {
            if (key == 'r' || key == 'R') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(0, 0, 0.5f);
                    }
                }
            }
        }
    }

    public void mouseDragged() {
        for (Figura figura : figuras) {
            if (figura.seleccion(get(mouseX, mouseY))) {
                figura.move(mouseX - pmouseX, mouseY - pmouseY, 0);
            }
        }
    }
}