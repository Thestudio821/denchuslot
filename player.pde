class Player{  
  
  int targetCoins;
  int haveCoins = 100;
  Slot slot = new Slot();
  
  void betCoins(){
    int cost = 10;
    haveCoins -= cost;
  }
  
  void lever(){
      slot.leftLane.moveLane();
      slot.centerLane.moveLane();
      slot.rightLane.moveLane();
  }
  
  void pushButton(){
    if (keyPressed){
      slot.laneControl();
    }
  }
}
