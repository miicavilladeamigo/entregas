boolean estoyJugando() {
  return (estado == 0);
}

boolean perdi() {
  return estado == 1;
}

boolean gane() {
  return estado == 2;
}

void inicializar(){
  estado = 0;
  inicializarAutosEnemigos();
  inicializarAutoPersonaje();
}
