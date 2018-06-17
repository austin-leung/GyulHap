public class TileList {
  
  String[] shapes = { "C", "T", "S" };
  String[] shapeColors = { "R", "B", "Y" };
  String[] backgroundColors = { "B", "G", "W" };
  
  ArrayList<Tile> TileArrayList = new ArrayList<Tile>(27);
  
  TileList() {
    int i = 0;
    while (i < 27){
      for (int j = 0; j < 3; j++){
        for (int k = 0; k < 3; k++){
          for (int l = 0; l < 3; l++) {
            TileArrayList.add(new Tile( shapes[j], shapeColors[k], backgroundColors[l]));
            i++;
          }
        }
      }
    }
  }
  
  Tile takeOne() {
    int index = (int) (Math.random() * TileArrayList.size());
    Tile chosen = TileArrayList.get(index);
    TileArrayList.remove(index);
    return chosen;
  }
  
  
  
}
