import processing.core.PApplet;
import processing.data.JSONArray;
import processing.data.JSONObject;
import processing.event.MouseEvent;
public class Tangram extends PApplet {
    public static PApplet processing;
    public static void main(String[] passedArgs) {
        String[] appletArgs = new String[]{"Tangram"};
        PApplet.main(appletArgs);
    }
    public void setup() {
        processing = this;
    }
    Figura[] figuras;
    boolean victoria = false;
    Figura[] figurasNivel;
    public void settings() {
        size(800, 800);
        figuras = new Figura[7];
        figuras[0] = new Triangulo(color(0, 0, 255), 100, 100, 1, 0.0025f * height);
        figuras[1] = new Triangulo(color(255, 0, 0), 100, 100, 1, 0.0025f * height);
        figuras[2] = new Triangulo(color(0, 255, 0), 300, 100, 1, 0.00175f * height);
        figuras[3] = new Triangulo(color(255, 0, 255), 100, 100, 1, 0.00125f * height);
        figuras[4] = new Triangulo(color(0, 255, 255), 200, 100, 1, 0.00125f * height);
        figuras[5] = new Cuadrado(color(255, 255, 0), 200, 100, 0, 0.0025f * height);
        figuras[6] = new Paralelogramo(color(100, 100, 255), 200, 100, 0, 0.0025f * height);
    }
    public void draw() {
        background(255);
        // menu();
        // if(pantallaInicial){
        juego();
        //modo_creador();
        //}
        condicionDeVictoria();
    }

    public void juego() {
        loadData();
        for (Figura figuraNivel : figurasNivel) {
            figuraNivel.display();
        }
        for (Figura figura : figuras) {
            figura.display();
        }
        if (keyPressed) {
            if (key == 'r' || key == 'R') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(0, 0, 0.2f, 1);
                    }
                }
            }
            if (key == 'e' || key == 'E') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(0, 0, -0.2f, 1);
                    }
                }
            }
            if (key == 't' || key == 'T') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(0, 0, 0, -1);
                    }
                }
            }
            if (key == 'a' || key == 'A') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(-1, 0, 0, 1);
                    }
                }
            }
            if (key == 's' || key == 'S') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(0, 1, 0, 1);
                    }
                }
            }
            if (key == 'w' || key == 'W') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(0, -1, 0, 1);
                    }
                }
            }
            if (key == 'd' || key == 'D') {
                for (Figura figura : figuras) {
                    if (figura.seleccion(get(mouseX, mouseY))) {
                        figura.move(1, 0, 0, 1);
                    }
                }
            }
        }
    }
    public void mouseDragged() {
        for (Figura figura : figuras) {
            if (figura.seleccion(get(mouseX, mouseY))) {
                figura.move(mouseX - pmouseX, mouseY - pmouseY, 0, 1);
            }
        }
    }
    public void mouseWheel(MouseEvent event) {
        for (Figura figura : figuras) {
            if (figura.seleccion(get(mouseX, mouseY))) {
                figura.move(0, 0, 2 * event.getCount(), 1);
            }
        }

    }
    public void condicionDeVictoria() {
        if (victoria == false) {
            int negro = color(0, 0, 0);
            loadPixels();
            int contador = 0;
            for (int i = 0; i < (width * height); i++) {
                int ddd = color(pixels[i]);
                if (negro == ddd && (victoria == false)) {
                    contador++;
                }
            }
            if (contador < 4000) {//&& pantallaInicial
                print("Ganaste");
                victoria = true;
            }
        }
    }

    public void loadData() {
        //JSONObject json = loadJSONObject("niveles.json");
        //JSONArray nivelData = json.getJSONArray("nivel1");
        JSONObject json = loadJSONObject("data/new.json");
        JSONArray nivelData = json.getJSONArray("piezas");

        figurasNivel = new Figura[nivelData.size()];
        for (int i = 0; i < nivelData.size(); i++) {
            JSONObject nivel = nivelData.getJSONObject(i);
            // Get a position object
            float x = nivel.getFloat("x");
            float y = nivel.getFloat("y");
            float r = nivel.getFloat("r");
            switch (i) {
                case 0:
                    figurasNivel[i] = new Triangulo(color(0, 0, 0), x, y, r, 0.0025f * height);
                    break;
                case 1:
                    figurasNivel[i] = new Triangulo(color(0, 0, 0), x, y, r, 0.0025f * height);
                    break;
                case 2:
                    figurasNivel[i] = new Triangulo(color(0, 0, 0), x, y, r, 0.00175f * height);
                    break;
                case 3:
                    figurasNivel[i] = new Triangulo(color(0, 0, 0), x, y, r, 0.00125f * height);
                    break;
                case 4:
                    figurasNivel[i] = new Triangulo(color(0, 0, 0), x, y, r, 0.00125f * height);
                    break;
                case 5:
                    figurasNivel[i] = new Cuadrado(color(0, 0, 0), x, y, r, 0.0025f * height);
                    break;
                case 6:
                    figurasNivel[i] = new Paralelogramo(color(0, 0, 0), x, y, r, 0.0025f * height);
                    break;
            }
        }
    }
    public void modo_creador(){

        if (keyPressed) {
            if (key == 'g' || key == 'G'){
                saveData(figuras);
            }
        }
        for (Figura figura :figuras ){
            figura.display();
        }
        if (keyPressed) {
            if (key == 'r' || key == 'R')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(0,0,0.2f,1);
                    }
                }
            }
            if (key == 'e' || key == 'E')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(0,0,-0.2f,1);
                    }
                }
            }
            if (key == 't' || key == 'T')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(0,0,0,-1);
                    }
                }
            }
            if (key == 'a' || key == 'A')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(-1,0,0,1);
                    }
                }
            }
            if (key == 's' || key == 'S')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(0,1,0,1);
                    }
                }
            }
            if (key == 'w' || key == 'W')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(0,-1,0,1);
                    }
                }
            }
            if (key == 'd' || key == 'D')
            {
                for (Figura figura :figuras )
                {
                    if (figura.seleccion(get(mouseX,mouseY))) {
                        figura.move(1,0,0,1);
                    }
                }
            }
        }
    }
    private void saveData(Figura[] figuras){

        //Aquí debería ir cada pieza
        JSONObject json;
        JSONArray nivel = new JSONArray();

//En el for pensaba poner figuras.length pero de momento no permite hacerlo

        for (int i = 0; i < 7; i++) {
            JSONObject pieza = new JSONObject();
            pieza.setInt("id", i);
            float[] posicion = figuras[i].getprs();
            pieza.setFloat("x",posicion[0]);
            pieza.setFloat("y",posicion[1]);
            pieza.setFloat("r",posicion[2]);
            pieza.setFloat("e",posicion[3]);
            nivel.setJSONObject(i, pieza);
        }
        json = new JSONObject();
        json.setJSONArray("piezas", nivel);

        saveJSONObject(json, "data/new.json");
    }
}