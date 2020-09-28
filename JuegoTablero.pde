Juego juego;

void setup() {
  size(400, 400);
  surface.setResizable(true);
  juego = new Juego();
}

void draw() {
  juego.dibujar();
}

void keyPressed() {
  juego.teclaPresionada();
}
