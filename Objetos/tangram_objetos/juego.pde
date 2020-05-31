void juego(){
  loadData();
   for (Figura figuraNivel :figurasNivel ){  
    figuraNivel.display();
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
          figura.move(0,0,0.2,1);  
        } 
     }
    }  
     if (key == 'e' || key == 'E')
    {
     for (Figura figura :figuras )
     {  
        if (figura.seleccion(get(mouseX,mouseY))) {
          figura.move(0,0,-0.2,1);  
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
void loadData() {
  // Load the JSON file and grab the array.
  JSONObject json = loadJSONObject("niveles.json");
  JSONArray nivelData = json.getJSONArray("nivel1");

  // The size of the array of Bubble objects is determined by the length of the JSON array.
  figurasNivel = new Figura[nivelData.size()]; 
  for (int i = 0; i<nivelData.size(); i++) {
    // Iterate through the array, grabbing each JSON object one at a time.
    JSONObject nivel = nivelData.getJSONObject(i);
    // Get a position object
    float  x = nivel.getFloat("x");
    float y = nivel.getFloat("y");
    float r = nivel.getFloat("r");
    switch (i) {
      case 0:
      figurasNivel[i]=new Triangulo(color(0,0,0),x,y,r,0.0025*height);
      break;
      case 1:
      figurasNivel[i]=new Triangulo(color(0,0,0),x,y,r,0.0025*height);
      break;
      case 2:
      figurasNivel[i]=new Triangulo(color(0,0,0),x,y,r,0.00175*height);
      break;
      case 3:
      figurasNivel[i]=new Triangulo(color(0,0,0),x,y,r,0.00125*height);
      break;
      case 4:
      figurasNivel[i]=new Triangulo(color(0,0,0),x,y,r,0.00125*height);
      break;
      case 5:
      figurasNivel[i]=new Cuadrado(color(0,0,0),x,y,r,0.0025*height);
      break;
      case 6:
      figurasNivel[i]=new Paralelogramo(color(0,0,0),x,y,r,0.0025*height);
      break; 
    }
  }
}
