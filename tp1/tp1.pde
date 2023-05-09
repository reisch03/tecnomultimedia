 //Alumno: Matías Mariescurrena, Comisión 1, Legajo 946993

PImage img1;

PImage img2;

PImage img3;



int posYT1;
int posYT2;
int posYT3;

int posYT4;
int posYT5;
int posYT6;

int posYT7;
int posYT8;
int posYT9;

float opacidad ;

PFont tipografia;
int segundos;

void setup(){
size(640,480);
 
fill(250,255,0);
tipografia = loadFont("AnimeInept-48.vlw");
textFont(tipografia,30);
textSize(40);
textAlign(CENTER, CENTER);
img1 = loadImage("monte.jpg");
img2 = loadImage("montefuji.jpg");
img3 = loadImage("monte3.jpg");

posYT1 =  490;
posYT2 =  700;
posYT3 =  600;
posYT4 = 490;
posYT5 = 700;
posYT6 = 600;

posYT7 = 490;
posYT8 = 700;
posYT9 = 600;
opacidad = 0;

}
void draw(){
if (frameCount%60 == 0){
  segundos ++ ;   

}

if (segundos<=3){
  opacidad = map(posYT1,490,100,0,255);
  image(img1,0,0,640,480);
  textSize(30);
  fill(249,250,13,opacidad);
  println(opacidad);
    text("Este es el monte Fujiyama, el más alto de Japón", width/2, posYT1);
    text ("Mide 3776 metros de altura",width/2 ,posYT2 );
    text( "Se encuentra ubicado en la prefectura de Shizuoka",width/2,posYT3);
if(posYT1 > 100){
  posYT1 -=5;
  
  }
if (posYT1 <= 100){
  if(posYT2 > 200){
  posYT2 -=5;
  }
}
 if (posYT2 <= 200){
  if(posYT3 > 300){
  posYT3 -=5;
    
  }
}
 }

 else if(segundos >7 && segundos <12){
   opacidad = map(posYT4,490,100,0,255);
    image(img2,0,0,640,480);
    fill(249,250,13,opacidad);
    println(opacidad);
   textSize(30);
    text("Es una de las atracciones principales de Japón", width/2, posYT4);
    text("Al tener una maravillosa vista desde arriba",width/2,posYT5);
    text( "Más de 200.000 personas al año suben",width/2,posYT6);
 if(posYT4 > 100){
   posYT4 -=5;
   }
 if(posYT5 > 200){
 textFont(tipografia,20);
  posYT5 -=5;
 }
 if (posYT5 <=200){
   if(posYT6 > 300){
   posYT6 -=5;
   }
  
  }
 }

 else if (segundos>12){
 opacidad = map(posYT7,490,100,0,255);
    img3 = loadImage("monte3.jpg");
    image(img3,0,0,640,480);
    textSize(30);
    fill(255,0,0,opacidad);
      text("Es una atraccion imperdible", width/2, posYT7);
      text("Cuenta con muchas características",width/2,posYT8);
      text( "Diversas temperaturas, relieves, volcanes ¡Y más!",width/2,posYT9);
  if(posYT7 > 100){
   posYT7 -=7;
   }
  if(posYT8 > 200){
 textFont(tipografia,20);
  posYT8 -=7;
 }
  if (posYT8 <=200){
    if(posYT9 > 300){
   posYT9 -=7;
   }
  }
 
 text(segundos,100,50);
 println(segundos);
 fill(255,255,255);
  rect(height/2,400,100,30);
  textFont(tipografia,20);
fill(0);
  textAlign(CENTER,CENTER);
  text("Reiniciar",height/2,400,100,30);

}

}
void mousePressed(){
  if(mouseX>height/2 && mouseX<height/2 + 100 && mouseY>400 && mouseY < 400 +30 && segundos>=15){
   fill(249,250,13);
   opacidad = 0;
    posYT1 =  490;
    posYT2 =  700;
    posYT3 =  600;
    posYT4 = 490;
    posYT5 = 700;
    posYT6 = 600;
    
    fill(255,0,0);
    posYT7 = 490;
    posYT8 = 700;
    posYT9 = 600;
  segundos = 0;
  }
}
