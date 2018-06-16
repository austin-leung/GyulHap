public class clickedTiles {

  
  public static boolean trioIsValid(Tile a, Tile b, Tile c) {
    if (!(!(propertySameShape(a, b)) && 
        !(propertySameShape(b, c)) &&
        !(propertySameShape(a,c))
      ||
      ( propertySameShape(a, b) && 
        propertySameShape(b, c) &&
        propertySameShape(a,c))
      )){
      return false;}
    if (!(! (propertySameShapeColor(a, b)) && 
        !(propertySameShapeColor(b, c)) &&
        !(propertySameShapeColor(a,c))
      ||
      ( propertySameShapeColor(a, b) && 
        propertySameShapeColor(b, c) &&
        propertySameShapeColor(a,c))
      )){
      return false;}
    if (!(!(propertySameBackgroundColor(a, b)) && 
        !(propertySameBackgroundColor(b, c)) &&
        !(propertySameBackgroundColor(a,c))
      ||
      ( propertySameBackgroundColor(a, b) && 
        propertySameBackgroundColor(b, c) &&
        propertySameBackgroundColor(a,c))
      )){
      return false;}
    
    
    return true;
    

  }

  public static boolean propertySameShape (Tile one, Tile two) {
    return  (one.shape).equals(two.shape);
  }
  
  static boolean propertySameShapeColor (Tile one, Tile two) {
    return  (one.shapeColor).equals(two.shapeColor);
  }
  
 static  boolean propertySameBackgroundColor (Tile one, Tile two) {
    return  (one.backgroundColor).equals(two.backgroundColor);
  }
  
  
  
}
