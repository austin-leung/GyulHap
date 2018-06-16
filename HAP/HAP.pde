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
  background (0, 255, 0);
  drawGrid();
  draw();
}

void drawGrid() {
  rect(50, 50, 198, 198);
  rect(300, 50, 198, 198);
  rect(550, 50, 198, 198);
  rect(50, 300, 198, 198);
  rect(300, 300, 198, 198);
  rect(550, 300, 198, 198);
  rect(50, 550, 198, 198);
  rect(300, 550, 198, 198);
  rect(550, 550, 198, 198);
}

void draw() {
  CYW = loadImage("CYW.png");
  CYB = loadImage("CYB.png");
  CYG = loadImage("CYG.png");
  CBW = loadImage("CBW.png");
  CBB = loadImage("CBB.png");
  CBG = loadImage("CBG.png");
  CRW = loadImage("CRW.png");
  CRB = loadImage("CRB.png");
  CRG = loadImage("CRG.png");
  TRW = loadImage("TRW.png");
  TRB = loadImage("TRB.png");
  TRG = loadImage("TRG.png");
  TBW = loadImage("TBW.png");
  TBB = loadImage("TBB.png");
  TBG = loadImage("TBG.png");
  TYW = loadImage("TYW.png");
  TYB = loadImage("TYB.png");
  TYG = loadImage("TYG.png");
  image(CYW, 50, 50);
  image(CYB, 300, 50);
  image(CYG, 550, 50);
  image(CBW, 50, 300);
  
}