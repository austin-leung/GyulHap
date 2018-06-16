TileList allTiles;
Tile[] chosenTiles = new Tile[9];

Tile test;
Tile test2;
void setup() { 
  
  size(800, 800);
  allTiles = new TileList();
  
  for (int i = 0; i < 9; i++) 
    chosenTiles[i] = allTiles.takeOne();

  chosenTiles[0].setXpos(50);
  chosenTiles[0].setYpos(50); 
  ellipse(50, 50, 200, 200);
  
  chosenTiles[1].setXpos(300);
  chosenTiles[1].setYpos(50);
  ellipse(300, 50, 200, 200);
  
  chosenTiles[2].setXpos(550);
  chosenTiles[2].setYpos(50);
  ellipse(550, 50, 200, 200);
  
  chosenTiles[3].setXpos(50);
  chosenTiles[3].setYpos(300);
  ellipse(50, 300, 200, 200);
  chosenTiles[4].setXpos(300);
  chosenTiles[4].setYpos(300);
  ellipse(300,300, 200, 200);
  chosenTiles[5].setXpos(550);
  chosenTiles[5].setYpos(300);
  ellipse(550,300, 200, 200);
  chosenTiles[6].setXpos(50);
  chosenTiles[6].setYpos(550);
  ellipse(50, 550, 200, 200);
  chosenTiles[7].setXpos(300);
  chosenTiles[7].setYpos(550);
  ellipse(300, 550, 200, 200);
  chosenTiles[8].setXpos(550);
  chosenTiles[8].setYpos(550);
  ellipse(550, 550, 200, 200);
}

void draw() {
  for(Tile t : chosenTiles) {
    t.display();    }   
}
      
void mouseClicked() {
  for(Tile t : chosenTiles) {
    t.mouseNearby();
  }
}
   
