public class Tile {
 String shape;
 String shapeColor;
 String backgroundColor;
 int xpos;
 int ypos;
 
 PImage pattern;
 
 Tile( String pShape, String pShapeColor, String pBackgroundColor) {
   
   shape = pShape;
   shapeColor = pShapeColor;
   backgroundColor = pBackgroundColor;
   pattern = loadImage(pShape + pShapeColor + pBackgroundColor + ".png");
   
 }
 
 void setXpos(int pXpos) {
   xpos = pXpos;
 }
 
 void setYpos(int pYpos) {
   ypos = pYpos;
 }
 
 void display() {
   
   image (pattern, xpos, ypos);
     
 }
  
 
 void mouseNearby() {
  
   if (((mouseX - xpos) * (mouseX - xpos) + (mouseY - ypos) * (mouseY - ypos)) < 10000) {
     print ("werk");
     print(xpos + " " + ypos);
     pattern = loadImage("TBB.png");
   }
 }
 
}
