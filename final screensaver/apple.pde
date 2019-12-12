int spawnX;
int spawnY;
class Apple{
  Apple(){
    spawnX = int(random(2,27)); //+2 and -2 to prevent spawning
    spawnY = int(random(2,15)); //on the borders of the game
    
    if(spawnX < 40 || spawnX > width-40){
      spawnX = int(random(0,28));
    }
    if(spawnY < 40 || spawnY > width-40){
      spawnY = int(random(0,16));
    }
  }
  
  void spawn(){
    noStroke();
    fill(214, 29, 9);
    if (endGame==false){
      rect((spawnX*60)-15,(spawnY*60)-15,50,50);
    }
  }
  void collision(){
    if (headX==spawnX && headY==spawnY){
       spawnX = int(random(2,27));
       spawnY = int(random(2,15));
       if(spawnX < 40 || spawnX > width-40){
         spawnX = int(random(2,27));
       }
       if(spawnY < 40 || spawnY > width-40){
         spawnY = int(random(2,15));
       }
      score++;
      spawn();
    }pause=true;
    if (keyPressed){
      if(key=='r' || key=='R'){
        spawnX = int(random(2,27));
       spawnY = int(random(2,15));
       if(spawnX < 40 || spawnX > width-40){
         spawnX = int(random(2,27));
       }
       if(spawnY < 40 || spawnY > width-40){
         spawnY = int(random(2,15));
       }
      }
    }
  }
  
}