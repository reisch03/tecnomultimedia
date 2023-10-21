//Matías Mariescurrena 94699/3
//https://youtu.be/vYPBRs6idQs
let juego;
let fondo, balitas, sabuesos, personaje;
let juegoIniciado = false;

function preload() {
  fondo = loadImage("data/fondo.jpg");
  balitas = loadImage("data/bala.png");
  sabuesos = loadImage("data/sabuesomecanico.jpg");
  personaje = loadImage("data/personaje.jpg");
}

function setup() {
  createCanvas(600, 450);
  juego = new Juego();
}

function draw() {
  background(0);
  if (juegoIniciado) {
    juego.jugando();
  } else {
    if (!juego.juegoTerminado) {
      juego.instrucciones();
    }
  }

  if (juego.juegoTerminado) {
    juego.botonReinicio.verificarClic();
  }
}

function keyPressed() {
  if (keyCode === RIGHT_ARROW && !juego.juegoIniciado) {
    juegoIniciado = true;
  }
}

function mousePressed() {
  if (juego.juegoTerminado && juego.botonReinicio && juego.botonReinicio.contiene(mouseX, mouseY)) {
    juego.reiniciarJuego();
    juego.juegoIniciado = false; 
  }
}
