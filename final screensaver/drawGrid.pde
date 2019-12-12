int grassX=40;
int grassY=40;

boolean check = true;

color grassCol;


void drawGrid() {
  grassY = 40;
  
  for (int gridY=0; gridY < 8; gridY++){ //Amount of 2x2 squares to draw
    for(int gridX=0; gridX < 14;gridX++){ //Same here
      check();
      
      noStroke();
      
      fill(grassCol);
      rect(grassX,grassY,60,60); //Top left 
      rect(grassX+60,grassY+60,60,60); //Bottom right
      
      check = !check; //Switch boolean to switch color
      check();
      
      fill(grassCol);
      rect(grassX+60,grassY,60,60); //Top right
      rect(grassX,grassY+60,60,60); //Bottom left
      
      check = !check;
      grassX = grassX + 120;
      
    } 
    grassY = grassY + 120;
    grassX = 40;
  }
}

void check(){
  if (!check){
    grassCol = color(123, 240, 70);
  } else if (check){
    grassCol = color(88, 201, 56);
  }
}