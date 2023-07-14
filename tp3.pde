///Alumn Matías Mariescurrena 94699/3 Comisión 1
//Vínculo del video
https://youtu.be/U2nYa1rPho8 
int cantidad = 17;
int tam;
PImage [] imagenes = new PImage[cantidad];
int soyPantalla;

int contador;
String [] textos = {"Montag estaba conforme con su trabajo como bombero, es decir quemando libros. Un día comienza a cuestionarse el sentido de su vida y tambien su profesion, además de cuestionarse porque los libros son peligrosos, y que es lo que contienen.",
"Un día Montag, estaba por quemar una casa, pero se le presento la oportunidad de tomar un libro,¿Qué hará Montag?",
"Luego de avisarle a su jefe, el Capitán Beatty, que está enfermo y de que este haya descubierto que tenía un libro en su poder",
"Montag decide ir a ver a Faber, quien le comparte sus conocimientos.Al día siguiente, el capitán Beatty hace sonar la alarma para quemar la casa de Montag, ya que su esposa lo había denunciado por tenencia de libros. Beatty logra quemar la casa de Montag, y está cara a cara con el protagonista¿Que debería hacer el protagonista?",
"El protagonista quema vivo a Beatty y escapa. Un sabueso mecanico lo persigue. Faber le da refugio y lo ayuda a esconderse del sabueso y flota aguas abajo",
"Se encuentra con gente refugiada. Su lider se llama Granger, quien lo ayuda a escaparse del sabueso.Luego, Granger le dice al protagonista:Recrearemos algunas obras literarias que estan en nuestra memoria y el libre pensamiento florecera (Historia original)", 
"Luego de la destruccion de la ciudad, los hombres salen para revisar los escombros y comienzan a construir y fomentar una sociedad que lea libros",
"Montag deja a la señora vivir y va con un libro a su casa y lo guarda en una bibilioteca secreta. El se lo lee a su esposa y a su amiga, quienes se conmueven",
"Al día siguiente, se entera de que la amiga de su esposa lo denuncio porque descurio que tenia mas de un libro. Beatty logra quemar la casa del protagonista y se dispone a enfrentarlo, este tiene tres opciones",
"Montag es perseguido por Beatty y por un sabueso. El protagonista logra perder a su jefe y se encuentra con Faber quien le da refugio",
"Faber le presenta a Montag su jefe, Granger, quien ayuda al protagonista y le dice lo siguiente:. que la forma para salir de todo esto, es conmover a la gente con una poesia.Entonces,Montag agarra un libro de poesia que tenia , toma control de un megatelevisor y lee una poesia para toda la ciudad. Todos quedaron perplejos, llorando por la belleza de esa poesia.Surgía una nueva era.",
"Granger le dice al protagonsta que la forma para salir de todo esto, es conmover a la gente con una poesia.Entonces,Montag agarra un libro de poesia que tenia escondido, toma control de un megatelevisory lee una poesia para toda la ciudad. Todos quedaron perplejos, llorando por la belleza de esa poesia.Surgía una nueva era.",
"Montag decide huir con el libro hacia cualquier lugar, lejos.Su esposa preocupada llama a los bomberos y la visitan",
"Montag decide huir con el libro hacia cualquier lugar lejos, pero luego visita a su esposa. ELla,preocupada llama a los bomberos y la visitan ",
"Ellos revisan su casa, encuentran los libros y deciden tomar de rehen para que Montag aparezca.El protagonista, aparece a lo lejos, y sin que lo vean, ve la escena. Beatty lo descubre y se enfrentan.Este tiene tres opciones:",
"Montag se deja apresar para salvar a su esposa.Una vez que lo esposan, el se da cuenta de que tiene que huir, que su esposa no vale la pena.El se libera de las esposas y escapa. Como consecuencia matan a su esposa.Montag se encuentra con Gente exiliada de la sociedad",
"Montag se encuentra con Gente exiliada de la sociedad que estaba observando un pajaro, ellos lo salvaron. De pronto se escucha que se rompe la puerta.Ellos, los refugiados eran fuerzas especiales dedicados a esto.Al ver su situacion, Montag decide huir, pero se encuentra Con Beatty.Quien quema vivo al protagonista.",
"Ellos eran fuerzas especiales dedicados a esto.Al ver su situacion, Montag decide huir, pero se encuentra Con Beatty.Quien quema vivo al protagonista.",
};

String [] opciones = {"A: Tomar el libro y quemar la casa junto con la señora que la habitaba e irse a casa(historia original)",
"B:tomar el libro y dejar a la señora vivir",
"C:Escapara con el libro",
" A :Quemar vivo a Beatty",
 "B : Huir rápidamente",
 "C : Dejarse apresar",
 
};
void setup (){
size(600,600);
textSize(12);
textAlign(CENTER, CENTER);
tam = 130;
contador=0;
soyPantalla=-1;
  for (int i=0; i<cantidad; i++) {
    imagenes[i] = loadImage("imagen"+i+".png");

  }
}

void draw(){
if(contador==0){
  pantallaInicio("Inicio");
  }
} 
void circulo( int x, int y, int w, int h){
ellipse(x,y,w,h);
}
void mousePressed(){
  if(contador==0){
    if(estoySobreCirculos(305,380,tam)){
        pantallaCreditos("creditos");
        contador=1;
  }
}
  if(contador==1){
    if(estoySobreCirculos(305,540,tam-20)){
      contador=0;
      pantallaInicio("Inicio");
  }
 } 
 //pasar a primera pantalla
     if(contador==0){
      pantallaInicio("Inicio");
    if(estoySobreCirculos(305,210,tam)){ 
      Pantalla(0);
       soyPantalla=0;
       contador=1;
  fill(255);
  circulo(70,340,tam-40,tam-40);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  text("Siguiente",550,340);  
  }
 }
 //Pasar a pantalla de atras  desde donde estoy
 if(soyPantalla==0){
  if(estoySobreCirculos(70,340,tam-40)){ 
    pantallaInicio("Inicio");
    contador=0;
  }
   //Avanzar hacia adelante
 else if (soyPantalla==0){
  if(estoySobreCirculos(550,340,tam-40)){
     Pantalla(1);
     soyPantalla=1;
     fill(255);
     stroke(0);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[0],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[1],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[2],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340); 
   }    
  }
 }
  //Pasar a pantalla de atras  desde donde estoy
 if(soyPantalla==1){
    if(estoySobreCirculos(70,340,tam-40)){ 
       soyPantalla=0;
       Pantalla(0);
  fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
 fill(255);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Siguiente",550,340); 
   }
 }
 //Pasar a opción A
  if(soyPantalla==1){
      if(estoySobreCirculos(80,100,tam+20)){ 
          Pantalla(2);
         soyPantalla=2;
        fill(255);
        circulo(70,340,tam-40,tam-40);
         circulo(550,340,tam-40,tam-40);
         fill(0);
     text("Volver",70,340);
    text("Siguiente",550,340);  
   }
 }
 //Elegir opción B
  if(soyPantalla==1){
   if(estoySobreCirculos(320,100,tam+20)){ 
       soyPantalla=7;
       Pantalla(7);
  fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Siguiente",550,340); 
 }
}
 if(soyPantalla==1){
   if(estoySobreCirculos(520,100,tam+20)){ 
       soyPantalla=13;
       Pantalla(13);
  fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Siguiente",550,340); 
 }
}
 //Volver para atrás camino A
 if(soyPantalla==2){
  if(estoySobreCirculos(70,340,tam-40)){ 
    soyPantalla=1;
   Pantalla(1);
   fill(255);
     stroke(0);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[0],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[1],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[2],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
      text("Volver",70,340);
 }
}
//Volver para atrás camino B
  if(soyPantalla==7){
   if(estoySobreCirculos(70,340,tam-40)){ 
      Pantalla(1);
     soyPantalla=1;
     fill(255);
     stroke(0);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[0],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[1],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[2],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
 }
}
 //Volver para atrás camino C
 if(soyPantalla==13){
   if(estoySobreCirculos(70,340,tam-40)){ 
      Pantalla(1);
     soyPantalla=1;
     fill(255);
     stroke(0);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[0],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[1],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[2],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
  }
 }
 //Pasar página, avanzar Camino A
  if(soyPantalla==2){
        if(estoySobreCirculos(550,340,tam-40)){ 
          soyPantalla=3;
          Pantalla(3);
           stroke(0);
           fill(255);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[3],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[4],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[5],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
          fill(255);
       circulo(70,340,tam-40,tam-40);
      fill(0);
     text("Volver",70,340);
 }  
}  
  //Pasar página, avanzar Camino B
    if(soyPantalla==7){
  if(estoySobreCirculos(550,340,tam-40)){ 
    soyPantalla=8;
   Pantalla(8);
   fill(255);
     stroke(0);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[3],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[4],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[5],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
  }
 }
 //Pasar página, avanzar Camino C
if(soyPantalla==13){
  if(estoySobreCirculos(550,340,tam-40)){ 
    soyPantalla=14;
   Pantalla(14);
   fill(255);
     stroke(0);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[3],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[4],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[5],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
 }
}
//Ir hacia atras, Camino A
 
if(soyPantalla==3){
   if(estoySobreCirculos(70,340,tam-40)){ 
      soyPantalla=2;
      Pantalla(2);
     fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
    circulo(550,340,tam-40,tam-40);
       fill(0);
       text("Siguiente",550,340);
 }
}
//Volver atrás Camino B
 if(soyPantalla==8){
   if(estoySobreCirculos(70,340,tam-40)){ 
      soyPantalla=7;
      Pantalla(7);
     fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
    circulo(550,340,tam-40,tam-40);
       fill(0);
       text("Siguiente",550,340);
 }
}
//Volver atrás Camino c
 if(soyPantalla==14){
   if(estoySobreCirculos(70,340,tam-40)){ 
      soyPantalla=13;
      Pantalla(13);
     fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
    circulo(550,340,tam-40,tam-40);
       fill(0);
       text("Siguiente",550,340);
  }
 }
//Elegir opción A
 if(soyPantalla==3 ||soyPantalla==14 || soyPantalla==8 ){
   if(estoySobreCirculos(80,100,tam+20)){ 
       soyPantalla=4;
       Pantalla(4);
  fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Siguiente",550,340); 
 }
}
//Elegir opción B
 if(soyPantalla==3 ||soyPantalla==14 || soyPantalla==8 ){
   if(estoySobreCirculos(320,100,tam+20)){ 
       soyPantalla=9;
       Pantalla(9);
  fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Siguiente",550,340); 
  }
 }
 //Elegir opción c
 if(soyPantalla==3 ||soyPantalla==14 || soyPantalla==8 ){
   if(estoySobreCirculos(520,100,tam+20)){ 
       soyPantalla=15;
       Pantalla(15);
  fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
  circulo(550,340,tam-40,tam-40);
  fill(0);
  text("Siguiente",550,340); 
  }
 }
  //Volver Atras Camino A
 if(soyPantalla==4){
   if(estoySobreCirculos(70,340,tam-40)){
     soyPantalla=3;
     Pantalla(3);
  stroke(0);
  fill(255);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[3],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[4],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[5],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
   }
  }
    //Volver Atras Camino B
 if(soyPantalla==9){
   if(estoySobreCirculos(70,340,tam-40)){
     soyPantalla=8;
     Pantalla(8);
  stroke(0);
  fill(255);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[3],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[4],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[5],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
   }
  }
      //Volver Atras Camino B
 if(soyPantalla==15){
   if(estoySobreCirculos(70,340,tam-40)){
     soyPantalla=14;
     Pantalla(14);
  stroke(0);
  fill(255);
     circulo(80,100,tam+20,tam+20);
     fill(0);
     text(opciones[3],10,50,tam,tam);
     fill(255);
      circulo(320,100,tam+20,tam+20);
      fill(0);
      text(opciones[4],250,50,150,100);
      fill(255);
      circulo(520,100,tam+20,tam+20);
      fill(0);
      text(opciones[5],490,50,90,100);
      fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
    text("Volver",70,340);
  }
}
     //Avanzar página camino A
    if(soyPantalla==4){
  if(estoySobreCirculos(550,340,tam-40)){ 
    soyPantalla=5;
   Pantalla(5);
   fill(255);
     stroke(0);
     fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
       text("Volver",70,340);
  fill(255);
  circulo(70,340,tam-40,tam-40);
    fill(255);
   circulo(300,350,tam,tam);
     fill(0);
     text("Reinciar",300,350);
     //Final A
  }
 }
    if(soyPantalla==9){
  if(estoySobreCirculos(550,340,tam-40)){ 
    soyPantalla=10;
   Pantalla(10);
   fill(255);
     stroke(0);
     fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
       text("Volver",70,340);
    fill(255);
   circulo(300,350,tam,tam);
     fill(0);
     text("Reinciar",300,350);
     //Final B
  }
 }
  if(soyPantalla==15){
  if(estoySobreCirculos(550,340,tam-40)){ 
    soyPantalla=16;
   Pantalla(16);
   fill(255);
     stroke(0);
     fill(255);
      circulo(70,340,tam-40,tam-40);
      fill(0);
       text("Volver",70,340);
    fill(255);
   circulo(300,350,tam,tam);
     fill(0);
     text("Reinciar",300,350);
     //Final c
  }
 }
 //Volver Atrás, Camino A
 if(soyPantalla==5){
   if(estoySobreCirculos(70,340,tam-40)){ 
      soyPantalla=4;
      Pantalla(4);
     fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
    circulo(550,340,tam-40,tam-40);
       fill(0);
       text("Siguiente",550,340);
  }
 }
 //Volver Atrás, Camino B
 if(soyPantalla==10){
   if(estoySobreCirculos(70,340,tam-40)){ 
      soyPantalla=9;
      Pantalla(9);
     fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
    circulo(550,340,tam-40,tam-40);
       fill(0);
       text("Siguiente",550,340);
  }
 }
 ///Volver Atrás, Camino c
 if(soyPantalla==16){
   if(estoySobreCirculos(70,340,tam-40)){ 
      soyPantalla=15;
      Pantalla(15);
     fill(255);
  circulo(70,340,tam-40,tam-40);
  fill(0);
  text("Volver",70,340);
  fill(255);
    circulo(550,340,tam-40,tam-40);
       fill(0);
       text("Siguiente",550,340);
   }
 }
 //Reinicio 
 if(soyPantalla==5 ||soyPantalla==10 ||soyPantalla==16){
    if(estoySobreCirculos(300,350,tam)){ 
      pantallaInicio("Inicio");
      contador=0;
  }
 }
}

boolean estoySobreCirculos(float x, float y, int dim) { 
  float distan = dist(mouseX, mouseY, x, y);
  return distan<dim/2;
  }
  
  
void pantallaCreditos(String x){
  text("Soy la pantalla"+x,width/2, 0);
   background(255,130,0);
   soyPantalla=-1;
 fill(255);
 textSize(40);
 text("Autor: Ray BradBury",310,210);
 text("Alumno: Matias Mariescurrena",310,380);
 text("Alumno de Comision 1",310,450);
  fill(255);
  circulo(305,540,tam-20,tam-20);
  fill(0);
  textSize(22);
 text("Volver",305,540);
 
}

void pantallaInicio(String x){
text("Soy la pantalla"+x,width/2, 0);
fill(0,0,255);
  background(255,80,80);
  fill(255);
  circulo(305,380,tam,tam);
  circulo(305,210,tam,tam);
  fill(0);
  textSize(22);
 text("Iniciar",310,210);
 text("Creditos",310,380);
 textSize(50);
 text("Fahrenheit 451",310,50);
}
void Pantalla(int indiceImagen){
  textSize(12);
  text("soy pantalla" + indiceImagen ,width/2, 0);
  image(imagenes[indiceImagen],200,200);
  fill(255);
  imagenes[indiceImagen].resize(width, height);
  image(imagenes[indiceImagen], 0, 0);
  rectanguloParaTexto(100,450,400,100);
  fill(0);
  fill(0);
  text(textos[indiceImagen],100,400,400,200);
  fill(255);
  fill(0);
  text("Volver",70,340);

 
  

}


void rectanguloParaTexto(int x,int y,int w,int h){

fill(255);
stroke(0,0,0);
rect(x,y,w,h);
}
