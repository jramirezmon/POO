boolean victoria = false;
Figura[] figuras;
Figura[] figurasNivel;
void setup() {
  size(900,700,P2D);
  titulo = loadImage("Titulo.png");
<<<<<<< HEAD
  figuras = new Figura[7];
  figuras[0]=new Triangulo(color(0,0,255),100,100,1,0.0025*height);
  figuras[1]=new Triangulo(color(255,0,0),100,100,1,0.0025*height);
  figuras[2]=new Triangulo(color(0,255,0),300,100,1,0.00175*  height);
  figuras[3]=new Triangulo(color(255,0,255),100,100,1,0.00125*height);
  figuras[4]=new Triangulo(color(0,255,255),200,100,1,0.00125*height);
  figuras[5]=new  Cuadrado(color(255,255,0),200,100,0,0.0025*height);
  figuras[6]=new Paralelogramo(color(100,100,255),200,100,0,0.0025*height);
 saveData(figuras);
=======
 figuras = new Figura[7];
  // Parameters go inside the parentheses when the object is constructed.
figuras[0]=new Triangulo(color(0,0,255),100,100,1,0.0025*height);
figuras[1]=new Triangulo(color(255,0,0),100,100,1,0.0025*height);
figuras[2]=new Triangulo(color(0,255,0),300,100,1,0.00175*  height);
figuras[3]=new Triangulo(color(255,0,255),100,100,1,0.00125*height);
figuras[4]=new Triangulo(color(0,255,255),200,100,1,0.00125*height);
figuras[5]=new  Cuadrado(color(255,255,0),200,100,0,0.0025*height);
figuras[6]=new Paralelogramo(color(100,100,255),200,100,0,0.0025*height);
 //saveData(figuras);
>>>>>>> 6843331eec21cdda19a4f845dff6b8fff7ca5e88
}
void draw() {
  background(255);
  menu();
  if(pantallaInicial){
    juego();
    modo_creador();
  }
<<<<<<< HEAD
  //modo_creador();
=======
>>>>>>> 6843331eec21cdda19a4f845dff6b8fff7ca5e88
  condicionDeVictoria();
}
void mouseDragged()
{
   for (Figura figura :figuras ){  
    if (figura.seleccion(get(mouseX,mouseY))) {
  figura.move(mouseX-pmouseX,mouseY-pmouseY,0,1);  
  }
}
}
void mouseWheel(MouseEvent event) {
     for (Figura figura :figuras )
     {  
        if (figura.seleccion(get(mouseX,mouseY))) {
          figura.move(0,0,2*event.getCount(),1);  
        } 
     }  

}
