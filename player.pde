int targetCoins;
int haveCoins = 100;

void betCoins(){
  int cost = 10;
  haveCoins -= cost;
}

void lever(){
  betCoins();
  lane1.moveLane(120);
  lane2.moveLane(220);
  lane3.moveLane(320);
}

void pushButton(){
  if (keyPressed){
    laneControl();
  }
}
