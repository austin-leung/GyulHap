TileList allTiles;
Tile[] chosenTiles = new Tile[9];
ArrayList<Tile> selectedTiles;

Tile test;
Tile test2;
PFont font;
int interval = 20;
int score;
Timer timer;
boolean onoff = false;
  
void setup() { 
  size(800, 800);
  background(148,0,211);
  font = createFont("Arial", 30);
  allTiles = new TileList();
  timer = new Timer(120000);
  timer.start();
  for (int i = 0; i < 9; i++) 
    chosenTiles[i] = allTiles.takeOne();
    
  selectedTiles = new ArrayList<Tile>();

  chosenTiles[0].setXpos(50);
  chosenTiles[0].setYpos(50); 
  
  chosenTiles[1].setXpos(300);
  chosenTiles[1].setYpos(50);
  
  chosenTiles[2].setXpos(550);
  chosenTiles[2].setYpos(50);
  
  chosenTiles[3].setXpos(50);
  chosenTiles[3].setYpos(300);

  chosenTiles[4].setXpos(300);
  chosenTiles[4].setYpos(300);
  
  chosenTiles[5].setXpos(550);
  chosenTiles[5].setYpos(300);

  chosenTiles[6].setXpos(50);
  chosenTiles[6].setYpos(550);

  chosenTiles[7].setXpos(300);
  chosenTiles[7].setYpos(550);

  chosenTiles[8].setXpos(550);
  chosenTiles[8].setYpos(550);
}

void draw() {
 for(Tile t : chosenTiles) {
    t.display();    }
{     
  fill (100);
  rect (745,5,60,30);
  if (onoff){
  fill(255);
     textFont(font);
  text((timer.totalTime - timer.passedTime)/1000,750,30);
  onoff=false;
} else {
  fill (100);
  rect (745,5,60,30);
  onoff=true;
}


}
 if(timer.isFinished()) {
   stop();
   background(0);
   text("GAME OVER", 350, 400);
   text("score " + score, 350, 450);
 }
 text(score, 15, 30);
}
      
void mouseClicked() {
  for(Tile t : chosenTiles) {
    if (t.mouseNearby() && !selectedTiles.contains(t)) {
      fill(0,255,0);
      rect(t.xpos-10, t.ypos-10, 220, 220);
      selectedTiles.add(t);
    }
    else if (t.mouseNearby() && selectedTiles.contains(t)) {
      t.selected = false;
      selectedTiles.remove(t);
      stroke(148,0,211);
      fill(148,0,211);
      rect(t.xpos-10, t.ypos-10, 220, 220);
    }
  }
  println("remaining clicks" + (3 - selectedTiles.size()));
  
  //for(Tile t : selectedTiles) {
  //  println (t.xpos + " " + t.ypos + " " + t.shape + " " + t.shapeColor + " " + t.backgroundColor);
  //}
  
      
   if (selectedTiles.size() >= 3) {
    if (trioIsValid(selectedTiles)) {
      score += 1;
      fill(255);
      println("yay");
      
      
     
      for(Tile t : selectedTiles) {
        allTiles.add(t);
        for(int i = 0; i < 9; i++) {
         if ( chosenTiles[i].equals(t)) {
           chosenTiles[i] = allTiles.takeOne(); 
           chosenTiles[i].xpos = t.xpos;
           chosenTiles[i].ypos = t.ypos;
           println(chosenTiles[i].pattern + " " + i);
         }
         
        }
        
      }
      
      
    }
    else {
      println("boo");
    }
    
    for (int i = 0; i < 3; i++) {
      selectedTiles.get(i).selected = false;
    }
    selectedTiles.clear();
    background(148,0,211);
  }
  
  
  
  

}







boolean trioIsValid(ArrayList<Tile> selectedBoys ) {
    if (!(
        !(propertySameShape(selectedBoys.get(0), selectedBoys.get(1))) && 
        !(propertySameShape(selectedBoys.get(1), selectedBoys.get(2))) &&
        !(propertySameShape(selectedBoys.get(2),selectedBoys.get(0)))
      ||
      ( propertySameShape(selectedBoys.get(0), selectedBoys.get(1)) && 
        propertySameShape(selectedBoys.get(1), selectedBoys.get(2)) &&
        propertySameShape(selectedBoys.get(2), selectedBoys.get(0)))))
        {
      return false;}
    if (!(
        !(propertySameShapeColor(selectedBoys.get(0), selectedBoys.get(1))) && 
        !(propertySameShapeColor(selectedBoys.get(1), selectedBoys.get(2))) &&
        !(propertySameShapeColor(selectedBoys.get(2),selectedBoys.get(0)))
      ||
      ( propertySameShapeColor(selectedBoys.get(0), selectedBoys.get(1)) && 
        propertySameShapeColor(selectedBoys.get(1), selectedBoys.get(2)) &&
        propertySameShapeColor(selectedBoys.get(2),selectedBoys.get(0)))))
      {
      return false;}
    if (!(
        !(propertySameBackgroundColor(selectedBoys.get(0), selectedBoys.get(1))) && 
        !(propertySameBackgroundColor(selectedBoys.get(1), selectedBoys.get(2))) &&
        !(propertySameBackgroundColor(selectedBoys.get(2),selectedBoys.get(0)))
      ||
      ( propertySameBackgroundColor(selectedBoys.get(0), selectedBoys.get(1)) && 
        propertySameBackgroundColor(selectedBoys.get(1), selectedBoys.get(2)) &&
        propertySameBackgroundColor(selectedBoys.get(2),selectedBoys.get(0)))))
      {
      return false;}
    
    
    return true;
    

  }

 boolean propertySameShape (Tile one, Tile two) {
    return  (one.shape).equals(two.shape);
  }
  
 boolean propertySameShapeColor (Tile one, Tile two) {
    return  (one.shapeColor).equals(two.shapeColor);
  }
  
  boolean propertySameBackgroundColor (Tile one, Tile two) {
    return  (one.backgroundColor).equals(two.backgroundColor);
  }
   
