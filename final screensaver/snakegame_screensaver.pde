Apple apple;
Head head;
Body body;
int score=0;
int [] bodyX = new int[101];
int [] bodyY = new int[101];
int headX;
int headY;
boolean pause;

void setup(){  
  size(1760,1040);
  background(25, 125, 14);
  
  apple = new Apple();
  head = new Head();
  body = new Body();
  
  frameRate(15);
  
}

void draw(){
  background(25,125,14);
  fill(255);
  textSize(40);
  text("score",5,35);
  text(score,125,35);
  drawGrid();
  
  head.moveSnake();
  apple.collision();
  body.UpdateBody();  
  head.checkHead();
  apple.spawn();
  head.drawHead();
  body.drawBody();
  head.die();
}  