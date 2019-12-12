
int bodyCount;

class Body{
  void UpdateBody(){
    for(int a=100; a>0; a--){
      bodyX[a]=bodyX[a-1];
      bodyY[a]=bodyY[a-1];
    }bodyX[0]=headX;
    bodyY[0]=headY;
    pause=false;
  }

  void drawBody(){
    for (int a=1; a<100; a++){
      if (score+1>a){
        fill(255);
        rect(bodyX[a]*60-15,bodyY[a]*60-15,50,50);
      }
    }
  }
}
    