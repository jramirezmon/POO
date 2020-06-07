boolean victoria = false;
boolean drawMalla = true;
Figura[] figuras;
Figura[] figurasNivel;
Figura[] botones;
Figura[] imagenes;
int caso;

void setup() {
  size(900, 680, P2D);
  imagenes = new Figura[1];
  imagenes[0]= new Imagen(color(0, 0, 255), (width/2)-450, 40, 0, 0.0015*height, "Titulo");
  figuras = new Figura[7];
  figuras[0]=new Triangulo(color(0, 0, 255), 100, 100, 1, 0.0025*height);
  figuras[1]=new Triangulo(color(255, 0, 0), 100, 100, 1, 0.0025*height);
  figuras[2]=new Triangulo(color(0, 255, 0), 300, 100, 1, 0.00175*  height);
  figuras[3]=new Triangulo(color(255, 0, 255), 100, 100, 1, 0.00125*height);
  figuras[4]=new Triangulo(color(0, 255, 255), 200, 100, 1, 0.00125*height);
  figuras[5]=new  Cuadrado(color(255, 255, 0), 200, 100, 0, 0.0025*height);
  figuras[6]=new Paralelogramo(color(100, 100, 255), 200, 100, 0, 0.0025*height);
  botones = new Figura[4];
  botones[0]=new Boton(color(160, 52, 114), 150+0*width/3, height/2, 30, height/500, "Creador");
  botones[1]=new Boton(color(0, 0, 205), 150+1*width/3, height/2, 30, height/500, "  Jugar");
  botones[2]=new Boton(color(199, 21, 133), 150+2*width/3, height/2, 30, height/500, "Créditos");
  botones[3]=new Boton(color(255, 215, 0), width-100, 80, 30, height/500, "Regresar");
}

void drawMalla(float scale) {
  push();
  strokeWeight(1);
  int i;
  for (i=0; i<=width/scale; i++) {
    stroke(0, 0, 0, 20);
    line(i*scale, 0, i*scale, height);
  }
  for (i=0; i<=height/scale; i++) {
    stroke(0, 0, 0, 20);
    line(0, i*scale, width, i*scale);
  }
  pop();
}

void keyPressed() {
  if (key == 'm' || key == 'M')
    drawMalla = !drawMalla;
}

void draw() {
  background(255);
  if (drawMalla)
    drawMalla(10);
  switch (caso) {
  case 0:
    background(255, 250, 5);
    imagenes[0].display();
    caso=menu();
    break;
  case 1:
    caso=juego();
    break;
  case 2:
    caso=modo_creador();
    break;
  }
}
int menu() {
  for (int i = 0; i < 3; i++) {
    botones[i].display();
  }
  if (mousePressed && (mouseButton == LEFT)) {
    int contador = 0;
    for (Figura boton : botones ) {  
      if (boton.seleccion_centro()) {
        switch (contador) {
        case 0:
          return 2;
        case 1:
          return 1;
        case 2:
          return 0;
        default:
          return 0;
        }
      }
      contador +=1;
    }
  }
  float y = sin(radians(frameCount*3));  
  for (int i = 0; i < 3; i++) {
    botones[i].move(0, y, 0, 1);
  }
  imagenes[0].move(0, y, 0, 1);
  return 0;
}

int juego() {
  loadData("nivel1");
  botones[3].display();
  for (Figura figuraNivel : figurasNivel ) { 
    figuraNivel.display();
  }
  for (Figura figura : figuras ) {  
    figura.display();
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 0, 0.2, 1);
        }
      }
    }  
    if (key == 'e' || key == 'E')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 0, -0.2, 1);
        }
      }
    }  
    if (key == 't' || key == 'T')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 0, 0, -1);
        }
      }
    }
    if (key == 'a' || key == 'A')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(-1, 0, 0, 1);
        }
      }
    }
    if (key == 's' || key == 'S')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 1, 0, 1);
        }
      }
    }
    if (key == 'w' || key == 'W')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, -1, 0, 1);
        }
      }
    }
    if (key == 'd' || key == 'D')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(1, 0, 0, 1);
        }
      }
    }
  }
  if (mousePressed && (mouseButton == LEFT)) {
    if (botones[3].seleccion_centro()) {
      return 0;
    }
  }
  if (condicionDeVictoria()) {
    delay(300);
    for (Figura figura : figuras )
    {  
      figura.move(random(10, 300), random(10, 300), 0, 1);
    }
    return 0;
  }
  return 1;
}

void mouseDragged()
{
  for (Figura figura : figuras ) {  
    if (figura.seleccion(get(mouseX, mouseY))) {
      figura.move(mouseX-pmouseX, mouseY-pmouseY, 0, 1);
    }
  }
}
void mouseWheel(MouseEvent event) {
  for (Figura figura : figuras )
  {  
    if (figura.seleccion(get(mouseX, mouseY))) {
      figura.move(0, 0, 2*event.getCount(), 1);
    }
  }
}

boolean condicionDeVictoria() {
  color negro = color(0, 0, 0);
  loadPixels();
  int contador = 0;
  for ( int i = 0; i < (width*height); i++ ) {
    color ddd =color(pixels[i]);
    if (negro==ddd ) {
      contador++;
    }
  }
  if (contador<4000 ) {
    print("Ganaste");
    return true;
  }
  return false;
}
void loadData(String nombre) {
  JSONObject json = loadJSONObject("data/"+nombre+".json");
  JSONArray nivelData = json.getJSONArray("piezas");
  figurasNivel = new Figura[nivelData.size()]; 
  for (int i = 0; i<nivelData.size(); i++) {
    JSONObject nivel = nivelData.getJSONObject(i);
    float  posicion_x = nivel.getFloat("posicion_x");
    float posicion_y = nivel.getFloat("posicion_y");
    float rotacion = nivel.getFloat("rotacion");
    switch (i) {
    case 0:
      figurasNivel[i]=new Triangulo(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.0025*height);
      break;
    case 1:
      figurasNivel[i]=new Triangulo(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.0025*height);
      break;
    case 2:
      figurasNivel[i]=new Triangulo(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.00175*height);
      break;
    case 3:
      figurasNivel[i]=new Triangulo(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.00125*height);
      break;
    case 4:
      figurasNivel[i]=new Triangulo(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.00125*height);
      break;
    case 5:
      figurasNivel[i]=new Cuadrado(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.0025*height);
      break;
    case 6:
      figurasNivel[i]=new Paralelogramo(color(0, 0, 0), posicion_x, posicion_y, rotacion, 0.0025*height);
      break;
    }
  }
}

int modo_creador() {
  botones[3].display();
  if (keyPressed) {
    if (key == 'g' || key == 'G') {
      saveData(figuras, "nivel1");
      for (Figura figura : figuras )
      {  
        figura.move(random(10, 300), random(10, 300), 0, 1);
      }
      return 0;
    }
  }
  for (Figura figura : figuras ) {  
    figura.display();
  }
  if (keyPressed) {
    if (key == 'r' || key == 'R')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 0, 0.2, 1);
        }
      }
    }  
    if (key == 'e' || key == 'E')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 0, -0.2, 1);
        }
      }
    }  
    if (key == 't' || key == 'T')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 0, 0, -1);
        }
      }
    }
    if (key == 'a' || key == 'A')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(-1, 0, 0, 1);
        }
      }
    }
    if (key == 's' || key == 'S')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, 1, 0, 1);
        }
      }
    }
    if (key == 'w' || key == 'W')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(0, -1, 0, 1);
        }
      }
    }
    if (key == 'd' || key == 'D')
    {
      for (Figura figura : figuras )
      {  
        if (figura.seleccion(get(mouseX, mouseY))) {
          figura.move(1, 0, 0, 1);
        }
      }
    }
  }
  if (mousePressed && (mouseButton == LEFT)) {
    if (botones[3].seleccion_centro()) {
      return 0;
    }
  }
  return 2;
}

void saveData(Figura[] figuras, String nombre) {
  //Aquí debería ir cada pieza   
  JSONObject json;  
  JSONArray nivel = new JSONArray();
  for (int i = 0; i < figuras.length; i++) {
    JSONObject pieza = new JSONObject();
    pieza.setInt("id", i);
    float[] posicion = figuras[i].getprs();
    pieza.setFloat("posicion_x", posicion[0]);
    pieza.setFloat("posicion_y", posicion[1]);
    pieza.setFloat("rotacion", posicion[2]);
    pieza.setFloat("escala", posicion[3]);
    nivel.setJSONObject(i, pieza);
  }
  json = new JSONObject();
  json.setJSONArray("piezas", nivel);
  saveJSONObject(json, "data/"+nombre+".json");
}
