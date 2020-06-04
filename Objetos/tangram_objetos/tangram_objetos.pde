boolean victoria = false;
Figura[] figuras;
Figura[] figurasNivel;
void setup() {
  size(900, 700, P2D);
  titulo = loadImage("Titulo.png");

  figuras = new Figura[7];
  figuras[0]=new Triangulo(color(0, 0, 255), 100, 100, 1, 0.0025*height);
  figuras[1]=new Triangulo(color(255, 0, 0), 100, 100, 1, 0.0025*height);
  figuras[2]=new Triangulo(color(0, 255, 0), 300, 100, 1, 0.00175*  height);
  figuras[3]=new Triangulo(color(255, 0, 255), 100, 100, 1, 0.00125*height);
  figuras[4]=new Triangulo(color(0, 255, 255), 200, 100, 1, 0.00125*height);
  figuras[5]=new  Cuadrado(color(255, 255, 0), 200, 100, 0, 0.0025*height);
  figuras[6]=new Paralelogramo(color(100, 100, 255), 200, 100, 0, 0.0025*height);
}
void draw() {
  background(255);
  menu();
  if (pantallaInicial) {
    juego();
    //modo_creador();
  }

  condicionDeVictoria();
}

void juego() {
  loadData("nivel1");
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

void condicionDeVictoria() {
  if (victoria == false) {
    color negro = color(0, 0, 0);
    loadPixels();
    int contador = 0;
    for ( int i = 0; i < (width*height); i++ ) {
      color ddd =color(pixels[i]);
      if (negro==ddd && (victoria==false)) {
        contador++;
      }
    }
    if (contador<4000 && pantallaInicial) {
      print("Ganaste");
      victoria = true;
    }
  }
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

void modo_creador() {

  if (keyPressed) {
    if (key == 'g' || key == 'G') {
      saveData(figuras, "nivel1");
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
