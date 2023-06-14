 //Alumno: Matías Mariescurrena, Comisión 1, Legajo 946993
 //https://youtu.be/NNyiAPlKRsE
PImage img1;
int ancho,alto,px,py;
int contadorColor;
color fondo;


void setup(){
size(800,400);
img1 = loadImage("cuadrado.jpg");
px = 400;
py= 0;
ancho = 190;
alto = 190;
contadorColor = 0;
fondo = color(255);
}

void draw(){
background(fondo);

image(img1, 0,0,400,400);
fill(255);
rect(0,340,200,70);
fill(0);
  textAlign(CENTER,CENTER);
  text("Reiniciar",10,340,200,70);
  fill(255);
  rect(0,0,200,70);
fill(0);
  textAlign(CENTER,CENTER);
  text("presiona la flecha derecha del teclado para cambiar de color y la izquierda para volver a atráS",0,0,200,70);

float distancia = dist(mouseX,mouseY,width/2,height/2);
float tam = map(distancia,width,height,80,190);
float opacidad =map(Opacidad(mouseX),0,width,255,0);     
strokeWeight(3);
fill(0,0,0,opacidad);
cuadra(px,py,tam,tam);
cuadra(px +200,py,tam,tam);
cuadra(px,py + 200,tam,tam);
cuadra(px + 200,py + 200,tam,tam);
      
}
    
  




void cuadra(float x,float y, float w, float h){
  float incrementar = 5.5;
  float decrementar =15;
  float incrementarx=0.5;
  for(int i = 0; i<13; i++){
    rect(x,y,w,h);
    if(y<800){
      y+=incrementar;
   w-=decrementar;
   h-=decrementar;
   x+=incrementarx;
 
    }
    
  }
}


float Opacidad(float mouse){
if(mouse>255){
  return mouse;
  }
  else{
    return mouse;
  }
}

void keyPressed(){
  if(keyCode== RIGHT){
    contadorColor +=1;
  }
  
  if(keyCode == LEFT){
  contadorColor-=1;
  }

 
  if (contadorColor==1){
  println(fondo = color(0,255,0)); 
  }
  else if(contadorColor ==2){
  fondo = color(255,0,0);
  }
  else if(contadorColor ==3){
  fondo = color(0,0,255);
  }

}

void mousePressed(){ 
  if(mouseX>10 && mouseX<10+200 && mouseY>340 && mouseY<340 + 70){
  contadorColor=0;
  fondo = color(255);
    }
}
