class Contador {
  int posX, posY, contador;

  Contador(int p_posX, int p_posY) {
    posX = p_posX;
    posY = p_posY;
    contador = 0;
  }
  void dibujar() {
    textSize(20);
    fill(255, 0, 0);
    text("Contador: "+ contador, posX, posY);
  }
  void incremento(){
    contador++;
  }
}
