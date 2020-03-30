//variables
//int a=0;
//int b=0;
//int distancia = 10000;
//fin de variables

int [] moverPieza(float distancia, int posx, int posy){
  int [] coordenadas={posx,posy}; 
  if(( distancia < 40)&&(mousePressed)){
    posx = mouseX;
    posy = mouseY; 
  }
  return coordenadas;
}
  

void pintarTrianguloG1(int a,int b){
  fill(150,213,120);
  triangle(a-45,b-45,a+105,b-45,a-45,b+105);
  float distancia = dist(a,b,mouseX,mouseY);
  int[] nuevaUbicacion = moverPieza(distancia,a,b);
  a = nuevaUbicacion[0];
  b = nuevaUbicacion[1];
}
void pintarTrianguloG2(){
  fill(80,190,253);
  triangle(200,200,350,200,200,350);
}
void pintarTrianguloP1(){
  fill(79,36,215);
  triangle(0,200,70,200,0,270);
}
void pintarTrianguloP2(){
  fill(56,186,201);
  triangle(0,300,70,300,0,370);
}
void pintarTrianguloM(){
  fill(250,180,200);
  triangle(0,400,100,400,0,500);
}
void pintarCuadrado(){
  fill(50,250,190);
  rect(200,0,70,70);
}
void pintarParalelogramo(){
  fill(50,100,150);
  quad(300,0,440,0,510,70,370,70);
}
void pintarPiezas(){
  int a = 0;
  int b = 0;
  pintarTrianguloG1(a,b);
  pintarTrianguloG2();
  pintarTrianguloP1();
  pintarTrianguloP2();
  pintarTrianguloM();
  pintarCuadrado();
  pintarParalelogramo();
  fill(255,255,250);
  circle(a,b,50);
}

void setup(){
  size(500,700,P2D);
}

void draw(){
  background(215,120,63);
  pintarPiezas();
}
