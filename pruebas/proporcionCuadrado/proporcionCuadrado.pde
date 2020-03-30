float a = 400;
float b = 400;
void pintarCuadrado(){
  fill(0);
  rect((width/2)-(a/2),(height/2)-(b/2),a,b);
}
void pintarTriangulo1(){
  fill(100,50,80);
  triangle(width/2,height/2,(width/2)-(a/2),(height/2)+(b/2),(width/2)+(a/2),(height/2)+(b/2));
}
void pintarTriangulo2(){
  fill(200,40,70);
  triangle(width/2,height/2,(width/2)+(a/2),(height/2)+(b/2),(width/2)+(a/2),(height/2)-(b/2));
}
void pintarTriangulo3(){
  fill(225,200,0);
  triangle((width/2)-(a/2),(height/2)-(b/2),(width/2)-(a/2),height/2,width/2,(height/2)-(b/2));
}
void pintarTriangulo4(){
  fill(50,210,9);
  triangle((width/2)-(a/2),height/2,(width/2)-(a/2),(height/2)+(b/2),(width/2)-(a/4),(height/2)+(b/4));
}
void pintarCuadrado2(){
  fill(0,0,255);
  quad((width/2)-(a/2),height/2,(width/2)-(a/4),(height/2)+(b/4),width/2,height/2,(width/2)-(a/4),(height/2)-(b/4));
}
void pintarTriangulo5(){
  fill(200,46,32);
  triangle(width/2,height/2,(width/2)-(a/4),(height/2)-(b/4),(width/2)+(a/4),(height/2)-(b/4));
}
void pintarParalelogramo(){
  fill(213,113,13);
  quad((width/2)+(a/4),(height/2)-(b/4),(width/2)+(a/2),(height/2)-(b/2),width/2,(height/2)-(b/2),(width/2)-(a/4),(height/2)-(b/4));
}
void pintarPiezas(){
  pintarCuadrado();
  pintarTriangulo1();
  pintarTriangulo2();
  pintarTriangulo3();
  pintarTriangulo4();
  pintarCuadrado2();
  pintarTriangulo5();
  pintarParalelogramo();
}
void setup(){
  size(500,700,P2D);
}
void draw(){
  background(0,50,60);
  pintarPiezas();
}
