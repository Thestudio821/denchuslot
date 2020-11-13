class Player{
  
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
