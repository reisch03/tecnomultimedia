///Alumno Matías Mariescurrena 94699/3 Comisión 1
//Video: https://youtu.be/P_LaZCIQ4xk
let tam;
let contador; 
let vidas;
let PelotitasAtajadas;
let PosXArquero;
let PosYArquero;
 let PosYPelota
 let PosXPelota;
 let DispararPelota;
 let VelocidadPelota;

function setup() {
  createCanvas(600, 400);
  tam=130;
  contador=0;
  vidas=3;
  PelotitasAtajadas=0;
  PosXArquero=50;
   PosYArquero=190;
  PosXPelota=620;
   PosYPelota=random(150,290);
   VelocidadPelota=random(10,20);
  DispararPelota=false;


}


function draw() {
    if(contador===0){
  PantallaDeInicio();

}
//Si estamos en cancha mover al arquero arriba
  if (keyIsPressed===true) {
    if (keyCode=== UP_ARROW &&  PosYArquero>=106 && PosYArquero<=298||PosYArquero>=298 ) {
      PosYArquero-=6;
     
   }
  }

//Si estamos en cancha mover al arquero abajo
if(contador===3){
  Cancha();
  Pelota(PosXPelota,PosYPelota)
  Arquero(PosXArquero,PosYArquero);
  if (keyIsPressed===true) {
    if(keyCode=== DOWN_ARROW &&  PosYArquero>=106 && PosYArquero<=298 ||PosYArquero<=106) {
      PosYArquero+=6;
      
     
   }
  }
 }
 //Disparar Pelo
if(DispararPelota && PosXPelota>-10){ 
  PosXPelota-=VelocidadPelota;
 }
 //Colision, Si ataja
  if (colision(PosXPelota, PosYPelota, PosXArquero, PosYArquero, tam-100)) {
         DispararPelota=false;
         PosXPelota=620;
         PosYPelota=random(150,290);
         PelotitasAtajadas++;
         //Ganas
         if(PelotitasAtajadas===8){
           contador=4;
   background(0, 204,0);
   textSize(40);
   fill(255)
   text("¡Ganaste, sos el mejor arquero!",0,height/2)
   BotonReiniciar();
 }
    }
    //Si no ataja
    if( DispararPelota===true && PosXPelota<5){
    DispararPelota=false;
         PosXPelota=620;
         PosYPelota=random(150,290);
         vidas--;  
         //Perdiste
         if(vidas===0){
           contador=5;
   background(0, 204,0);
   textSize(60);
   fill(255)
   text("Game Over",120,height/2)
   BotonReiniciar();
 }
    }
}

function PantallaDeInicio(){
  background(0, 204,0);
  fill(255,255,255);
ellipse(305,150,tam,tam);
ellipse(305,300,tam,tam);
fill(0,0,0);
textSize(22);
  text("Iniciar",280,150);
 text("Creditos",270,307);
  textSize(50);
 text("Penalcinho",200,50);
}

function pantallaCreditos(){
  background(0, 204,0);
 fill(255);
 textSize(40);
 text("Alumno: Matias Mariescurrena",50,50);
 text("Alumno de Comision 1",90,100);
  fill(255);
 ellipse(305,300,tam-20,tam-20);
  fill(0);
  textSize(22);
 text("Volver",275,310);
 
}

function estoySobreCirculos( x, y,dim) { 
  let distan = dist(mouseX, mouseY, x, y);
  return distan<dim/2;
  }
  
  function PantallaComoJugar(){
    background(0, 204,0);
     textSize(40);
     fill(0,0,0);
      text("Como Jugar",200,50);
      textSize(16);
      fill(255);
      text("Presiona el espacio de lanzar pelota, así saldrán pelotitas que el arquero tendrá que atajar. Mientras mas pelotitas saques, mas rapido iran.",120,100,350,200);
      text("Utiliza las flechas de arriba y abajo para mover al arquero y atajar las pelotitas.",120,190,350,200);
      text("Si el arquero ataja 10 pelotitas gana. A medida que entren las pelotitas en el arco, el arquero ira perdiendo vidas, si pierde 3, Game Over",120,250,350,200);
 fill(255);
 ellipse(60,340,tam-20,tam-20);
ellipse(540,340,tam-20,tam-20);
fill(0);
textSize(22);
 text("Volver",30,350);
  text("Jugar",510,350);
  }

 function Cancha(){
   background(0, 204,0);

 fill(255);
 noStroke()
 rect(width/2,0,5,400);
 ellipse(width/2,height/2,tam-90,tam-90)
 Arco();
 ZonaDeDisparo()
  ContadorDeVida(vidas);
  Atajadas(PelotitasAtajadas);
  BotonReiniciar() 
  
    }
    
  function Arco(){
  fill(255);
  stroke(0);
  rect(10,95,10,200);
  }
  
  function ZonaDeDisparo(){
    fill(0,0,255);
    stroke(0);
    rect(580,95,10,200);
  }
  
  function Arquero(PosX,PosY){
    fill(247,255,26);
     stroke(0);
    ellipse(PosX,PosY,tam-100,tam-100);
  }
  
  function ContadorDeVida(cantidadDeVida){
    fill(255);
    textSize(16);
    text("vidas restantes:"+ cantidadDeVida,390,20);
  }
  
  function Atajadas(Atajadas){
    fill(255);
    textSize(16);
    text("Atajaste:" +  PelotitasAtajadas,130,20);
  }
  
  function Pelota(PosPX,PosPY){
  fill(255);
  ellipse(PosPX,PosPY,tam-110,tam-110)
  }
  
  function BotonReiniciar(){
  fill(255);
  stroke(0)
  ellipse(300,345,tam-20,tam-20);
  textSize(20);
  fill(0);
   text("Reiniciar",263,355);
  
  }


function mousePressed(){
 if(contador===0){
    if(estoySobreCirculos(305,300,tam)){
        pantallaCreditos();
        contador=1;
  }
 }
 //Volver a inicio
 else if(contador===1){
    if(estoySobreCirculos(305,300,tam-20)){
          contador=0;
      PantallaDeInicio();
  }
 }
 //Pasar a pantalla de instrucciones
if (contador===0){
    if(estoySobreCirculos(305,150,tam)){
       PantallaComoJugar()
        contador=2;
  }
 }
 //Regresar a inicio
 else if(contador===2){
    if(estoySobreCirculos(60,340,tam-20)){
     contador=0;
      PantallaDeInicio();
  }
 }
 //Pasar a jugar
 if (contador===2){
    if(estoySobreCirculos(540,340,tam-20)){
       Cancha();
        contador=3;
   }
 }
 
 if( contador ===3 || contador===4 || contador===5){
  if(estoySobreCirculos(300,345,tam-20)){
       contador=0;
      PantallaDeInicio();
    
  }
 }
}
function keyPressed() {
  if (keyCode=== 32) {
    Pelota(PosXPelota,height/2);
    DispararPelota = true;
  }
}

function colision(x, y, px, py,dim) {
  if (x>px&&x<px+dim && y<py+dim ) {
    return true;
  } else {
    return false;
  }
}





  
