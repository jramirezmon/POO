
Figura[] figuras;
Figura[] fondo;
void setup() {
  size(1920,1080);
 figuras = new Figura[7];
 fondo =new Figura[7];
  // Parameters go inside the parentheses when the object is constructed.
figuras[0]=new Triangulo(color(0,0,255),100,100,1,0.0025*height);
figuras[1]=new Triangulo(color(255,0,0),100,100,1,0.0025*height);
figuras[2]=new Triangulo(color(0,255,0),300,100,1,0.00175*  height);
figuras[3]=new Triangulo(color(255,0,255),100,100,1,0.00125*height);
figuras[4]=new Triangulo(color(0,255,255),200,100,1,0.00125*height);
figuras[5]=new  Cuadrado(color(255,255,0),200,100,0,0.0025*height);
figuras[6]=new Paralelogramo(color(100,100,255),200,100,0,0.0025*height);
}
void draw() {
  background(255);
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
}
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
