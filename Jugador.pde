class Jugador {
  int posX, posY, tam;

  Jugador(int p_posX, int p_posY, int p_tam) {//parametros para dibujar a mi personaje 
    posX = p_posX;
    posY = p_posY;
    tam = p_tam;
  }
  void dibujar() {
    fill(255);
    ellipse(posX, posY, tam, tam);
  }
  void teclaIzquierda() {
    if (keyCode == LEFT) {
      posX = posX - tam;
    }
  }
  void teclaDerecha() {
    if (keyCode == RIGHT) {
      posX = posX + tam;
    }
  }
  
  boolean chocaCon(Enemigo enemigo) {
    if (dist(posX, posY, enemigo.posX, enemigo.posY) <= tam/2) {
      return true;
    }
    return false;
  }
}
