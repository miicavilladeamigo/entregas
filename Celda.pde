class Celda {
  int cantW = 10;
  int cantH = 10;
  int tamW = width/cantW;
  int tamH = height/cantH;


  void dibujar() {
    for (int w=0; w < cantW; w++) {
      for (int h=0; h < cantH; h++) {
        rect(w*tamW, h*tamH, tamW, tamH);
      }
    }
  }
  void teclaPresionada() {
  }
}
