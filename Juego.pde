class Juego {
  int cantidadEnemigos = 10;
  int tam;

  Jugador jugador;
  Arma arma;
  Enemigo [] enemigos = new Enemigo [cantidadEnemigos];
  Contador contador;

  Juego() {
    jugador = new Jugador(200, 370, 50);
    for (int i=0; i < cantidadEnemigos; i++ ) {
      enemigos[i] = new Enemigo(i*tam + tam/2, generarPosicionEnemigo(), tam/2);
    }
    contador = new Contador(50, 50);
    arma = new Arma(200, 370, 20);
  }
  void dibujar() {
    arma.dibujar();
    jugador.dibujar();
    contador.dibujar();
  }
  void dibujarEnemigos() { 
    for (int i=0; i < cantidadEnemigos; i++ ) {
      enemigos[i].dibujar();
    }
  }


  void teclaPresionada() {
    jugador.teclaDerecha();
    jugador.teclaIzquierda();
    arma.teclaPresionada();
  }
  int generarPosicionEnemigo() {//la ellipse vuelve hacia arriba y genera una posición aleatorea.
    return round(random(-1000, tam));
  }
}
