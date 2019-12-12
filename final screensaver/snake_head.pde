
boolean up=false, down=false, left=false, right=false, endGame=false;
class Head{
  int headStatus; //The value of this determines which way the head goes
  
  Head(){
    headX = 1;
    headY = 1;
  }
  
  void drawHead(){
    fill(255);
    rect(headX*60-15,headY*60-15,50,50);
  }
  
void moveSnake(){
  if (keyPressed){
    if(key == 'W' || key == 'w'){
      up=true;
      down=false;
      left=false;
      right=false;
    }if(key == 'S' || key == 's'){                          
      up=false;
      down=true;
      left=false;
      right=false;
    }if(keyCode == 'A' || key == 'a'){
      up=false;
      down=false;
      left=true;
      right=false;
    }if (keyCode == 'D' || key == 'd'){
      up=false;
      down=false;
      left=false;
      right=true;
    }
  }
  if (up==true){
    headY=headY-1;
    headStatus=1;
  }if (down==true){
    headY=headY+1;
    headStatus=2;
  }if (left==true){
    headX=headX-1;
    headStatus=3;
  }if (right==true){
    headX=headX+1;
    headStatus=4;
  } drawHead();
}

void checkHead(){
  if(headX*60-15 < 40){
    resetGame();
  }if(headY*60-15 <40){
    resetGame();
  }if(headX*60-15 > width-40){
    resetGame();
  }if(headY*60-15 > height-40){
    resetGame();
  }
}

void die(){
  if (pause==false){
    for (int a=score; a>score; a--){
      if (headX == bodyX[a]){
        resetGame();
      }if (headY == bodyY[a]){
        resetGame();
      }
    }
  }
}
    
  void resetGame(){ //just resetting all variables
    endGame=true;
    background(255);
    textSize(40);
    fill(0);
    score=0;
    up=false;
    down=false;
    right=false;
    left=false;
    headX=1;
    headY=1;
    endGame=false;
  }
}

    