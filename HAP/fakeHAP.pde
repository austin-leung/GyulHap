PFont font;
String time = "20";
int t;
int interval = 20;
int score;

void setup()
{
  size(800, 800);
  font = createFont("Arial", 30);
  background(255);
  fill(47, 68, 212);
}

void draw()
{
    background(255);
    rect(50, 50, 200, 200);
    rect(300, 50, 200, 200);
    rect(550, 50, 200, 200);
    rect(50, 300, 200, 200);
    rect(300, 300, 200, 200);
    rect(550, 300, 200, 200);
    rect(50, 550, 200, 200);
    rect(300, 550, 200, 200);
    rect(550, 550, 200, 200);
   
    t = interval-int(millis()/1000);
    time = nf(t , 3);
    if (millis()%3 == 0) score += millis();
    if(t == 0){
      println("GAME OVER");
      println("score: " + score);
      stop();}
     
    
   text(score, 0, 15);
   text(time, 775, 15);
}
