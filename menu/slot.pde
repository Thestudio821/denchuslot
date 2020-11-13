class Slot{
  Slot(){}
  
  int betCoins;
  int magnification;
  int targetCoins = 120;
  
  final int leftPoint = 120;
  final int centerPoint = 220;
  final int rightPoint = 320;
  
  Lane leftLane = new Lane(leftPoint);
  Lane centerLane = new Lane(centerPoint);
  Lane rightLane = new Lane(rightPoint);
  
  Player player = new Player();
  
  void laneControl(){
      if(key == 'q'){
      quit();
    }else if (key == ' ' && leftLane.lane[0] != 0 && centerLane.lane[0] != 0 && rightLane.lane[0] != 0){
      decision();
      leftLane.resetLane();
      centerLane.resetLane();
      rightLane.resetLane();
    } else if (key == 'a'){
      leftLane.stopLane();
    } else if (key == 's'){
      centerLane.stopLane();
    } else if (key == 'd'){
      rightLane.stopLane();
    }
  }
  
  void lever(){
      leftLane.moveLane();
      centerLane.moveLane();
      rightLane.moveLane();
  }
  
  void calcMagnification(){
    
  }
  
  void calcCoins(){
    
  }
  
  void message(){
    
  }
  
  void decision(){
    if (player.haveCoins >= targetCoins){
      isGameClear();
    } else if (player.haveCoins <= 0){
      isGameOver();
    }
    player.betCoins();
  }
  
  void isGameClear(){
      state = CLEAR;
    }
  
  
  void isGameOver(){
      state = FAULT;
  }
  
}
