class Player{
  int targetCoins = 120;
  int haveCoins = 100;
  
  void betCoins(){
    int cost = 10;
    haveCoins -= cost;
  }
  
  void pushButton(){
    if (keyPressed){
      slot.laneControl();
    }
  }
}
