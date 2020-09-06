void inicializarAutoPersonaje() {
  posX = 0;
  tiempo = 0;
}



void dibujarAutoPersonaje() {
  fill(255, 0, 0);
  rect(posX, height - tamY, tamX, tamY);
  textSize(20);
  fill(0);
  text("Puntos:" + puntos, width/2, height - 90);
  text("Tiempo:" + tiempo, width/2, height -70);
  tiempo = tiempo + 1;
  if(tiempo == 2500){
    estado = 1;
  }
}

void dibujarMensajePerder() {
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("PERDISTE!", width/2, height/2);
  textSize(20);
  text("PRESIONA R PARA ARRANCAR!", width/2, height/2 + 100);
}

void dibujarMensajeGanar() {
  fill(0);
  textSize(40);
  textAlign(CENTER);
  text("GANASTE!", width/2, height/2);
  textSize(20);
  text("PRESIONA R PARA ARRANCAR!", width/2, height/2 + 100);
}


void moverAutoPersonaje() {
  if (keyCode == LEFT) {
    posX = posX - tamX;
  } else if (keyCode == RIGHT) {
    posX = posX + tamX;
  }
}
