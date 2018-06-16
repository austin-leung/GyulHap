//hap

void setup() {
  size(800, 800);
  background (255,255,255);
  drawGrid();
  draw();
}

void drawGrid() {
  rect(50, 50, 200, 200);
  rect(300, 50, 200, 200);
  rect(550, 50, 200, 200);
  rect(50, 300, 200, 200);
  rect(300, 300, 200, 200);
  rect(550, 300, 200, 200);
  rect(50, 550, 200, 200);
  rect(300, 550, 200, 200);
  rect(550, 550, 200, 200);
}