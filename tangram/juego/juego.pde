// Declaramos las variables necesarias para controlar cada una de las piezas
//son siete piezas y cada una se controla con tres variables:
//La posición y el ángulo de rotación
//[n][1]=posx [n][2]=posy [n][3]=angulo
int [][] figuras = {{100,100,45},{300,200,-45},{100,0,0},{20,250,0},{20,20,0},{200,20,0},{300,80,0}};
PImage img;
boolean gano = true;
boolean drawGrid = true;
//Programación Triángulo Grande1
void pintarTrianguloG1(){
    if((dist(figuras[0][0],figuras[0][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[0][2]=figuras[0][2]+1;
      }
      if(key=='s'){
        figuras[0][2]=figuras[0][2]-1;
      }
    }
    if((dist(figuras[0][0],figuras[0][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[0][0] = mouseX;
      figuras[0][1] = mouseY;
    }
  fill(210,50,60);
  push();
  translate(figuras[0][0],figuras[0][1]);
  rotate(radians(figuras[0][2]));
  triangle(-30,-30,70,-30,-30,70);
  fill(200,45,65);
  noStroke();
  circle(0,0,20);
  pop();
}
//Programación Triángulo Grande 2
void pintarTrianguloG2(){
    if((dist(figuras[1][0],figuras[1][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[1][2]=figuras[1][2]+1;;
      }
      if(key=='s'){
        figuras[1][2]=figuras[1][2]-1;;
      } 
    }
    if((dist(figuras[1][0],figuras[1][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[1][0] = mouseX;
      figuras[1][1] = mouseY;
    }
  fill(210,100,40);
  push();
    translate(figuras[1][0],figuras[1][1]);
    rotate(radians(figuras[1][2]));
    triangle(-30,-30,70,-30,-30,70);
    fill(200,90,40);
    noStroke();
    circle(0,0,20);
  pop();
}
//Programación Triángulo Mediano:
void pintarTrianguloM(){
  if((dist(figuras[2][0],figuras[2][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[2][2]= figuras[2][2]+1;
      }
      if(key=='s'){
        figuras[2][2]= figuras[2][2]-1;
      } 
    }
    if((dist(figuras[2][0],figuras[2][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[2][0]= mouseX;
      figuras[2][1]= mouseY;
    }
  fill(160,80,40);
  push();
    translate(figuras[2][0],figuras[2][1]);
    rotate(radians(figuras[2][2]));
    triangle(-25,-25,45.71068,-25,-25,45.71068);
    fill(150,90,50);
    noStroke();
    circle(0,0,20);
  pop();
}
//Programación Triángulo Pequeño1:
void pintarTrianguloP1(){
  if((dist(figuras[3][0],figuras[3][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[3][2]= figuras[3][2]+1;
      }
      if(key=='s'){
        figuras[3][2]= figuras[3][2]-1;
      } 
    }
    if((dist(figuras[3][0],figuras[3][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[3][0]= mouseX;
      figuras[3][1]= mouseY;
   }
  fill(10,250,40);
    push();
    translate(figuras[3][0],figuras[3][1]);
    rotate(radians(figuras[3][2]));
    triangle(-15,-15,35,-15,-15,35);
    fill(20,240,50);
    noStroke();
    circle(0,0,20);
  pop();
}
//Programación Triángulo Pequeño 2:
void pintarTrianguloP2(){
  if((dist(figuras[4][0],figuras[4][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[4][2]= figuras[4][2]+1;
      }
      if(key=='s'){
        figuras[4][2]= figuras[4][2]-1;
      } 
    }
    if((dist(figuras[4][0],figuras[4][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[4][0]= mouseX;
      figuras[4][1]= mouseY;
    }
  
  fill(10,100,40);
  push();
    translate(figuras[4][0],figuras[4][1]);
    rotate(radians(figuras[4][2]));
    triangle(-15,-15,35,-15,-15,35);
    fill(20,80,50);
    noStroke();
    circle(0,0,20);
  pop();
  
}
//Programación Cuadrado:
void pintarCuadrado(){
  if((dist(figuras[5][0],figuras[5][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[5][2]= figuras[5][2]+1;
      }
      if(key=='s'){
        figuras[5][2]= figuras[5][2]-1;
      } 
    }
    if((dist(figuras[5][0],figuras[5][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[5][0]= mouseX;
      figuras[5][1]= mouseY;
    }
  fill(50,100,40);
  push();
    translate(figuras[5][0],figuras[5][1]);
    rotate(radians(figuras[5][2]));
    rect(-25,-25,50,50);
    fill(40,90,50);
    noStroke();
    circle(0,0,20);
  pop();
}
//Programación paralelogramo
void pintarParalelogramo(){
      if((dist(figuras[6][0],figuras[6][1],mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        figuras[6][2]= figuras[6][2]+1;
      }
      if(key=='s'){
        figuras[6][2]= figuras[6][2]-1;
      } 
    }
    if((dist(figuras[6][0],figuras[6][1],mouseX,mouseY)<20) && (mousePressed)){  
      figuras[6][0]= mouseX;
      figuras[6][1]= mouseY;
    }
  fill(80,20,170);
  push();
    translate(figuras[6][0],figuras[6][1]);
    rotate(radians(figuras[6][2]));
    quad(-50,-25,0,-25,50,25,0,25);
    fill(70,20,190);
    noStroke();
    circle(0,0,20);
  pop();
}
//Método que pinta las piezas
void pintarPiezas(){
  pintarTrianguloG1();
  pintarTrianguloG2();
  pintarTrianguloM();
  pintarTrianguloP1();
  pintarTrianguloP2();
  pintarCuadrado();
  pintarParalelogramo();
}
void drawGrid(float scale) {
  push();
  strokeWeight(1);
  int i;
  for (i=0; i<=width/scale; i++) {
    stroke(20, 20, 20, 20);
    line(i*scale, 0, i*scale, height);
  }
  for (i=0; i<=height/scale; i++) {
    stroke(20, 20, 20, 20);
    line(0, i*scale, width, i*scale);
  }
  pop();
}
//dibjar grid si o no
void keyPressed() {
  if (key == 'g' || key == 'G')
    drawGrid = !drawGrid;
}
void setup(){
   img = loadImage("pato.png");
  size(800,600,P2D);
}
void draw(){
 if(gano){
   color negro = color(0,0,0);
   background(255,255,255);
    image(img, 100,100);
     if (drawGrid){
        drawGrid(10);
     }
   pintarPiezas();
   loadPixels();
   int contador = 0;
   for ( int i = 0; i < (width*height); i++ ) {
    color ddd =color(pixels[i]);
      if(negro==ddd && gano){
        contador++;
      }
   }
   if(contador<2500){
      print("ganaste");
      gano = false;
  }
 }
}
