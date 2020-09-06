//el juego consiste en chocar a otros autos para obtener puntos. Si llega a 5, gana.
//en caso de no cumplirlo antes de que el tiempo termine, pierde.

int cantCaminos = 3;
int cantAutos = 4;
int tamX, tamY, posX;

int [][] autosEnemigos = new int [cantCaminos][cantAutos];
int puntos;//gana puntos a medida que choca con los otros autos.
int estado;//para saber si esta jugando, perdio o gano.
int tiempo;


void setup() {
  size(300, 600);

  tamX = width / cantCaminos;
  tamY = height / 4;

  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
  surface.setResizable(true);
}

void draw() {
  background(200);
  if (estoyJugando()) {
    dibujarAutosEnemigos();
    dibujarAutoPersonaje();
  } else if (perdi()) {
    dibujarMensajePerder();
  } else if (gane()) {
    dibujarMensajeGanar();
  }
}
void keyPressed() {
  if (estoyJugando()) {
    moverAutoPersonaje();
  } else if (gane() || perdi()) {
    if (keyCode == 'r') {
      dibujarAutosEnemigos();
      dibujarAutoPersonaje();
    }
  }
}
