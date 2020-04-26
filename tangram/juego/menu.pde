//Parte del código en donde se encuentra alojada la página de inicio, a la cual se accede por medio de la tecla 'p'
//Dicha tecla cambia la condición de un booleano el cual controla lo que se dibuja en la pantalla en cada momento 
PImage titulo;
//Programación del botón
boolean pantallaInicial=false;
boolean pintarBoton(){
  push();
  translate(width/2,40+height/2);
  int lado = 50;
  rotate(radians(30));
   fill(160,52,114);
   noStroke();
   circle(0,0,130);
   fill(255,117,20);
   triangle(-lado,-(lado*sqrt(3))/2+15,lado,-(lado*sqrt(3))/2+15,0,(lado*sqrt(3))/2+15);
   pop();
   boolean indicador = false;
   if(dist(width/2,40+height/2+20*sin(radians(frameCount*3)),mouseX,mouseY)<130){  
      if (mousePressed){
       indicador = true;
      }
    }
    return indicador;
}
boolean menu(){  
     background(255,255,25);
     float y = sin(radians(frameCount*3));
     push();
     translate(0,20*y);
     image(titulo, 60,40);
     pantallaInicial = pintarBoton();
     pop();
  return pantallaInicial;
}
