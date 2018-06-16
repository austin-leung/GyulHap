public class clickedTiles {
  
  boolean trioIsValid(Tile a, Tile b, Tile c) {
    if (! 
    ( propertySameShape(a, b) && 
    propertySameShape(b, c) &&
    propertySameShape(a,c))
    ||
    ( propertySameShape(a, b) && 
    propertySameShape(b, c) &&
    propertySameShape(a,c))
    ){
    return false;}
    if (! 
    ( propertySameShapeColor(a, b) && 
    propertySameShapeColor(b, c) &&
    propertySameShapeColor(a,c))
    ||
    ( propertySameShapeColor(a, b) && 
    propertySameShapeColor(b, c) &&
    propertySameShapeColor(a,c))
    ){
    return false;}
    if (! 
    ( propertySameBackgroundColor(a, b) && 
    propertySameBackgroundColor(b, c) &&
    propertySameBackgroundColor(a,c))
    ||
    ( propertySameBackgroundColor(a, b) && 
    propertySameBackgroundColor(b, c) &&
    propertySameBackgroundColor(a,c))
    ){
    return false;}
    
    
    return true;
    
  }
  
  boolean propertySameShape (Tile one, Tile two) {
    return  one.shape.equals(two.shape);
  }
  
   boolean propertySameShapeColor (Tile one, Tile two) {
    return  one.shapeColor.equals(two.shapeColor);
  }
  
  boolean propertySameBackgroundColor (Tile one, Tile two) {
    return  one.backgroundColor.equals(two.backgroundColor);
  }
  
  
  static void main (String[] args) {
    Tile one = new Tile("C", "R", "B");
    Tile two = new Tile("C", "R", "G");
    Tile three = new Tile("C", "R", "W");
    trioIsValid(one, two, three);
  }
  
  
}
