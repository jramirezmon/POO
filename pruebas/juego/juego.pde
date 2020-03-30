// Declaramos las variables necesarias para controlar cada una de las piezas
//son siete piezas y cada una se controla con tres variables:
//La posición y el ángulo de rotación

//Triángulo Grande 1:
float angleTG1 = 3.1415/4;
int posxTG1 = 100;
int posyTG1 = 100;

//Triángulo Grande 2:
float angleTG2 = -3.1415/4;
int posxTG2 = 300;
int posyTG2 = 200;

//Cuadrado:
float angleC = 0;
int posxC = 100;
int posyC = 0;

//Triangulo Mediano:
float angleTM = 0;
int posxTM = 20;
int posyTM = 250;

//Triangulo Pequeño 1:
float angleTP1 = 0;
int posxTP1 = 20;
int posyTP1 = 20;

//Triángulo Pequeño 2:
float angleTP2 = 0;
int posxTP2 = 200;
int posyTP2 = 20;

//Paralelogramo:
float anglePl = 0;
int posxPl = 300;
int posyPl = 80;

//Programación Triángulo Grande1
void pintarTrianguloG1(){
    if((dist(posxTG1,posyTG1,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        angleTG1 = angleTG1+0.049084;
      }
      if(key=='s'){
        angleTG1 = angleTG1-0.049084;
      }
    }
    if((dist(posxTG1,posyTG1,mouseX,mouseY)<20) && (mousePressed)){  
    posxTG1 = mouseX;
    posyTG1 = mouseY;

  }
  fill(210,50,60);
  push();
  translate(posxTG1,posyTG1);
  rotate(angleTG1);
  triangle(-30,-30,70,-30,-30,70);
  fill(200,45,65);
  noStroke();
  circle(0,0,20);
  pop();
}

//Programación Triángulo Grande 2
void pintarTrianguloG2(){
    if((dist(posxTG2,posyTG2,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        angleTG2 = angleTG2+0.049084;
      }
      if(key=='s'){
        angleTG2 = angleTG2-0.049084;
      } 
    }
    if((dist(posxTG2,posyTG2,mouseX,mouseY)<20) && (mousePressed)){  
    posxTG2 = mouseX;
    posyTG2 = mouseY;

  }
  fill(210,100,40);
  push();
  translate(posxTG2,posyTG2);
  rotate(angleTG2);
  triangle(-30,-30,70,-30,-30,70);
  fill(200,90,40);
  noStroke();
  circle(0,0,20);
  pop();
}

//Programación Triángulo Mediano:
void pintarTrianguloM(){
  if((dist(posxTM,posyTM,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        angleTM = angleTM+0.049084;
      }
      if(key=='s'){
        angleTM = angleTM-0.049084;
      } 
    }
    if((dist(posxTM,posyTM,mouseX,mouseY)<20) && (mousePressed)){  
    posxTM = mouseX;
    posyTM = mouseY;

  }
  fill(160,80,40);
  push();
  translate(posxTM,posyTM);
  rotate(angleTM);
  triangle(-25,-25,45.71068,-25,-25,45.71068);
  fill(150,90,50);
  noStroke();
  circle(0,0,20);
  pop();
  
}

//Programación Triángulo Pequeño1:
void pintarTrianguloP1(){
  if((dist(posxTP1,posyTP1,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        angleTP1 = angleTP1+0.049084;
      }
      if(key=='s'){
        angleTP1 = angleTP1-0.049084;
      } 
    }
    if((dist(posxTP1,posyTP1,mouseX,mouseY)<20) && (mousePressed)){  
    posxTP1 = mouseX;
    posyTP1 = mouseY;

  }
  fill(10,250,40);
  push();
  translate(posxTP1,posyTP1);
  rotate(angleTP1);
  triangle(-15,-15,35,-15,-15,35);
  fill(20,240,50);
  noStroke();
  circle(0,0,20);
  pop();
  
}

//Programación Triángulo Pequeño 2:
void pintarTrianguloP2(){
  if((dist(posxTP2,posyTP2,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        angleTP2 = angleTP2+0.049084;
      }
      if(key=='s'){
        angleTP2 = angleTP2-0.049084;
      } 
    }
    if((dist(posxTP2,posyTP2,mouseX,mouseY)<20) && (mousePressed)){  
    posxTP2 = mouseX;
    posyTP2 = mouseY;

  }
  fill(10,100,40);
  push();
  translate(posxTP2,posyTP2);
  rotate(angleTP2);
  triangle(-15,-15,35,-15,-15,35);
  fill(20,80,50);
  noStroke();
  circle(0,0,20);
  pop();
  
}

//Programación Cuadrado:
void pintarCuadrado(){
    if((dist(posxC,posyC,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        angleC = angleC+0.049084;
      }
      if(key=='s'){
        angleC = angleC-0.049084;
      } 
    }
    if((dist(posxC,posyC,mouseX,mouseY)<20) && (mousePressed)){  
    posxC = mouseX;
    posyC = mouseY;

  }
  fill(50,100,40);
  push();
  translate(posxC,posyC);
  rotate(angleC);
  rect(-25,-25,50,50);
  fill(40,90,50);
  noStroke();
  circle(0,0,20);
  pop();
}

//Programación paralelogramo
void pintarParalelogramo(){
    if((dist(posxPl,posyPl,mouseX,mouseY)<20) && (keyPressed)){
      if(key=='a'){
        anglePl = anglePl+0.049084;
      }
      if(key=='s'){
        anglePl = anglePl-0.049084;
      } 
    }
    if((dist(posxPl,posyPl,mouseX,mouseY)<20) && (mousePressed)){  
    posxPl = mouseX;
    posyPl = mouseY;

  }
  fill(80,20,170);
  push();
  translate(posxPl,posyPl);
  rotate(anglePl);
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
void setup(){
  size(400,300,P2D);
}
void draw(){
  background(100,220,60);
  pintarPiezas();
}
