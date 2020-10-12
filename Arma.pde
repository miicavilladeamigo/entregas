class Arma {
  int posX, posY, tam, velocidad;

  Arma(int p_posX, int p_posY, int p_tam) {
    posX = p_posX;
    posY = p_posY;
    tam = p_tam;
    velocidad = 4;
  }

  void dibujar() {
    ellipse(posX, posY, tam, tam);
  }
  void teclaPresionada() {//cada vez que presiono la flecha UP, dispara 
    if(keyCode == UP){
      posY = posY - velocidad;
    }
  }
}
