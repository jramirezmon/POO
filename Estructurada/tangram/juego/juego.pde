// Declaramos las variables necesarias para controlar cada una de las piezas
//son siete piezas y cada una se controla con tres variables:
//La posición y el ángulo de rotación
//[n][1]=posx [n][2]=posy [n][3]=angulo
int [][] figuras = {{569,262,45},{612,220,-45},{527,176,0},{514,254,136},{571,198,-135},{536,220,-45},{589,167,-45}};
boolean [] escogida = {false,false,false,false,false,false,false};
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
    if((dist(figuras[0][0],figuras[0][1],mouseX,mouseY)<20)){
      if(escogida[1] == false && escogida[2] == false && escogida[3] == false && escogida[4] == false && escogida[5] == false && escogida[6] == false ){
        escogida[0] = true;
      }
      for(int i = 1;i == 6;i++){
        escogida[i] = false;
      }
      if((mousePressed) && (escogida[0] == true)){
      figuras[0][0] = mouseX;
      figuras[0][1] = mouseY;
      }
      fill(245,69,10);
      push();
        translate(figuras[0][0],figuras[0][1]);
        rotate(radians(figuras[0][2]));
        triangle(-30,-30,70,-30,-30,70);
        fill(121,85,72);
        stroke(188,170,164);
        strokeWeight(0.8);
        circle(0,0,20);
      pop();
    }
    else{
      escogida[0] = false;
      fill(245,69,10);
      push();
        translate(figuras[0][0],figuras[0][1]);
        rotate(radians(figuras[0][2]));
        triangle(-30,-30,70,-30,-30,70);
        fill(121,85,72);
        noStroke();
        circle(0,0,20);
      pop();
    }
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
    if((dist(figuras[1][0],figuras[1][1],mouseX,mouseY)<20)){
      if(escogida[0] == false && escogida[2] == false && escogida[3] == false && escogida[4] == false && escogida[5] == false && escogida[6] == false ){
        escogida[1] = true;
      }
      for(int i = 2;i == 6;i++){
        escogida[i] = false;
      }
      if((mousePressed) && (escogida[1] == true)){
      figuras[1][0] = mouseX;
      figuras[1][1] = mouseY;
      }
      fill(128,0,128);
      push();
        translate(figuras[1][0],figuras[1][1]);
        rotate(radians(figuras[1][2]));
        triangle(-30,-30,70,-30,-30,70);
        fill(121,85,72);
        stroke(188,170,164);
        strokeWeight(0.8);
        circle(0,0,20);
      pop();
    }
    else{
      escogida[1] = false;
      fill(128,0,128);
      push();
        translate(figuras[1][0],figuras[1][1]);
        rotate(radians(figuras[1][2]));
        triangle(-30,-30,70,-30,-30,70);
        fill(121,85,72);
        noStroke();
        circle(0,0,20);
      pop();
    }
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
    if((dist(figuras[2][0],figuras[2][1],mouseX,mouseY)<20)){
      if(escogida[0] == false && escogida[1] == false && escogida[3] == false && escogida[4] == false && escogida[5] == false && escogida[6] == false ){
        escogida[2] = true;
      }
      for(int i = 3;i == 6;i++){
        escogida[i] = false;
      }
      if((mousePressed) && (escogida[2] == true)){
      figuras[2][0]= mouseX;
      figuras[2][1]= mouseY;
      }
      fill(124,252,0);
      push();
        translate(figuras[2][0],figuras[2][1]);
        rotate(radians(figuras[2][2]));
        triangle(-25,-25,45.71068,-25,-25,45.71068);
        fill(121,85,72);
        stroke(188,170,164);
        strokeWeight(0.8);
        circle(0,0,20);
      pop();
    }
    else{
      escogida[2] = false;
      fill(124,252,0);
      push();
        translate(figuras[2][0],figuras[2][1]);
        rotate(radians(figuras[2][2]));
        triangle(-25,-25,45.71068,-25,-25,45.71068);
        fill(121,85,72);
        noStroke();
        circle(0,0,20);
      pop();
    }
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
    if((dist(figuras[3][0],figuras[3][1],mouseX,mouseY)<20)){
      if(escogida[0] == false && escogida[1] == false && escogida[2] == false && escogida[4] == false && escogida[5] == false && escogida[6] == false ){
        escogida[3] = true;
      }
      for(int i = 4;i == 6;i++){
        escogida[i] = false;
      }
      if((mousePressed) && (escogida[3] == true)){
      figuras[3][0]= mouseX;
      figuras[3][1]= mouseY;
      }
      fill(255,193,13);
      push();
        translate(figuras[3][0],figuras[3][1]);
        rotate(radians(figuras[3][2]));
        triangle(-15,-15,35,-15,-15,35);
        fill(121,85,72);
        stroke(188,170,164);
        strokeWeight(0.8);
        circle(0,0,20);
      pop();
   }
   else{
     escogida[3] = false;
      fill(255,193,13);
      push();
        translate(figuras[3][0],figuras[3][1]);
        rotate(radians(figuras[3][2]));
        triangle(-15,-15,35,-15,-15,35);
        fill(121,85,72);
        noStroke();
        circle(0,0,20);
      pop();
   }
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
    if(dist(figuras[4][0],figuras[4][1],mouseX,mouseY)<20){
      if(escogida[0] == false && escogida[1] == false && escogida[2] == false && escogida[3] == false && escogida[5] == false && escogida[6] == false ){
        escogida[4] = true;
      }
      for(int i = 5;i == 6;i++){
        escogida[i] = false;
      }
      if((mousePressed) && (escogida[4] == true)){
      figuras[4][0]= mouseX;
      figuras[4][1]= mouseY;
      }
      fill(3,169,244);
      push();
        translate(figuras[4][0],figuras[4][1]);
        rotate(radians(figuras[4][2]));
        triangle(-15,-15,35,-15,-15,35);
        fill(121,85,72);
        stroke(188,170,164);
        strokeWeight(0.8);
        circle(0,0,20);
      pop();
    }
    else{
      escogida[4] = false;
       fill(3,169,244);
       push();
         translate(figuras[4][0],figuras[4][1]);
         rotate(radians(figuras[4][2]));
         triangle(-15,-15,35,-15,-15,35);
         fill(121,85,72);
         noStroke();
         circle(0,0,20);
       pop();
    }
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
    if(dist(figuras[5][0],figuras[5][1],mouseX,mouseY)<20){
      if(escogida[0] == false && escogida[1] == false && escogida[2] == false && escogida[3] == false && escogida[4] == false && escogida[6] == false ){
        escogida[5] = true;
      }
      escogida[6] = false;
      if((mousePressed) && (escogida[5] == true)){
      figuras[5][0]= mouseX;
      figuras[5][1]= mouseY;
      }
      fill(10,0,205);
      push();
        translate(figuras[5][0],figuras[5][1]);
        rotate(radians(figuras[5][2]));
        rect(-25,-25,50,50);
        fill(121,85,72);
        stroke(188,170,164);
        strokeWeight(0.8);
        circle(0,0,20);
      pop();
    }
    else{
    escogida[5] = false;
    fill(10,0,205);
    push();
      translate(figuras[5][0],figuras[5][1]);
      rotate(radians(figuras[5][2]));
      rect(-25,-25,50,50);
      fill(121,85,72);
      noStroke();
      circle(0,0,20);
    pop();
    }
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
    if(dist(figuras[6][0],figuras[6][1],mouseX,mouseY)<20){  
      if(escogida[0] == false && escogida[1] == false && escogida[2] == false && escogida[3] == false && escogida[4] == false && escogida[5] == false ){
        escogida[6] = true;
      }
      if((mousePressed) && (escogida[6] == true)){
        figuras[6][0]= mouseX;
        figuras[6][1]= mouseY;
      }
        fill(216,27,96);
        push();
          translate(figuras[6][0],figuras[6][1]);
          rotate(radians(figuras[6][2]));
          quad(-50,-25,0,-25,50,25,0,25);
          fill(121,85,72);
          stroke(188,170,164);
          strokeWeight(0.8);
          circle(0,0,20);
        pop();
    }
    else{
    escogida[6] = false;
    fill(216,27,96);
    push();
      translate(figuras[6][0],figuras[6][1]);
      rotate(radians(figuras[6][2]));
      quad(-50,-25,0,-25,50,25,0,25);
      fill(121,85,72);
      noStroke();
      circle(0,0,20);
    pop();
    }
}
//Método que pinta las piezas
void pintarPiezas(){
  pintarParalelogramo();
  pintarCuadrado();
  pintarTrianguloP2();
  pintarTrianguloP1();
  pintarTrianguloM();
  pintarTrianguloG2();
  pintarTrianguloG1();
}

//Método que evalúa la condición de victoria del juego en general
//Aquí se encuentra alojado el método de pintar las piezas, para que cuando acabe el juego no se pinten más veces.
void condicionDeVictoria(boolean ganar, boolean dibujar ){
  if (dibujar){
    if(ganar){
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
     if(contador<1450){
        print("ganaste");
        gano = false;
    }
   }
  }
}
//Método que dibuja la rejilla que se encuentra al fondo, con posibilidad de ocultarla presionando la tecla 'g'

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
//Ocultar o dibujar la rejilla
void keyPressed() {
  if (key == 'g' || key == 'G')
    drawGrid = !drawGrid;
}

void setup(){
   img = loadImage("pato.png");
   titulo = loadImage("Titulo.png");
  size(900,600,P2D);
}

void draw(){
  noStroke();
  condicionDeVictoria(gano, menu());
}
