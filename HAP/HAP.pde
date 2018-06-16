//hap
PImage CYW;
PImage CYB;
PImage CYG;
PImage CBW;
PImage CBB;
PImage CBG;
PImage CRW;
PImage CRB;
PImage CRG;
PImage TRW;
PImage TRB;
PImage TRG;
PImage TBW;
PImage TBB;
PImage TBG;
PImage TYW;
PImage TYB;
PImage TYG;

void setup() {
  size(800, 800);
  background (0);
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

void draw() {
  CYW = loadImage("CYW.png");
  image(CYW, 51, 51);
}