//Parte del código en donde se encuentra alojada la página de inicio, a la cual se accede por medio de la tecla 'p'
//Dicha tecla cambia la condición de un booleano el cual controla lo que se dibuja en la pantalla en cada momento 
PImage titulo;
//Programación del botón
boolean pantallaInicial=false;
boolean pintarBoton(){
  //Lado del triángulo del botón
  int lado = 50;
   if(dist(width/2,40+height/2+20*sin(radians(frameCount*3)),mouseX,mouseY)<65){
     if (mousePressed){
       pantallaInicial = true;
      }
   push();
   translate(width/2,40+height/2);
   rotate(radians(30));
   fill(160,52,114);
   stroke(255);
   strokeWeight(6);
   circle(0,0,130);
   fill(255,117,20);
   stroke(255);
   strokeWeight(4);
   triangle(-lado,-(lado*sqrt(3))/2+15,lado,-(lado*sqrt(3))/2+15,0,(lado*sqrt(3))/2+15);
   pop();
    }
    else{
   push();
   translate(width/2,40+height/2);
   rotate(radians(30));
   fill(160,52,114);
   noStroke();
   circle(0,0,130);
   fill(255,117,20);
   triangle(-lado,-(lado*sqrt(3))/2+15,lado,-(lado*sqrt(3))/2+15,0,(lado*sqrt(3))/2+15);
   pop(); 
    }
    return pantallaInicial;
}
boolean menu(){  
     background(255,255,25);
     float y = sin(radians(frameCount*3));
     push();
     translate(0,20*y);
     image(titulo, (width/2)-332,40);
     pantallaInicial = pintarBoton();
     pop();
  return pantallaInicial;
}
