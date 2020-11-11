int targetCoins;
int haveCoins = 100;

void betCoins(){
  int cost = 10;
  haveCoins -= cost;
}

void lever(){
  betCoins();
  moveLane();
}

void pushButton(){
  if (keyPressed){
    laneControl();
  }
}
