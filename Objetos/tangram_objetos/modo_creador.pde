void modo_creador(){

   if (keyPressed) {
    if (key == 'g' || key == 'G'){
      //saveData();
    } 
 }
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
void saveData(){
  
 //Aquí debería ir cada pieza   
int[] triangulo = {0,1,2,3,4,5,6};

JSONObject json;  
  JSONArray nivel = new JSONArray();

  for (int i = 0; i < triangulo.length; i++) {

    JSONObject pieza = new JSONObject();

    pieza.setInt("id", i);
    
    //Aquí se asigna el array de cada pieza
    pieza.setInt("species", triangulo[i]);

    nivel.setJSONObject(i, pieza);
  }
  
  json = new JSONObject();
  json.setJSONArray("animals", nivel);

  saveJSONObject(json, "data/new.json");  
  }
