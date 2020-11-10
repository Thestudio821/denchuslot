int betCoins;
int magnification;

void reel(){ //Rotation of the picture
  int i,j,k; 
  if (lane[0] == 0){
    i = (int)random(3)+1;
    lane[0] = i;
    text(lane[0],120,120);
  }
  if (lane[1] == 0){
    j = (int)random(3)+1;
    lane[1] = j;
    text(lane[0],120,120);
  }
  if (lane[2] == 0){
    k = (int)random(3)+1;
    lane[2] = k;
    text(lane[0],120,120);
  }
}

void calcMagnification(){
}

void calcCoins(){
}

void message(){
}

void isGameClear(){
}

void isGameOver(){
}
