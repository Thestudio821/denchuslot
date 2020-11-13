 class Slot{
  Slot(){}
  
  int betCoins;
  int magnification;
  
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
      player.betCoins();
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
  
  void lever(){//sltmove
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
  
  void isGameClear(){
    
  }
  
  void isGameOver(){
    
  }
}

class testSlot{
  Slot testSlot = new Slot();

  
  void testCalcMagnification(){}
  void testCalcCoins(){}
  void testMessage(){}
  void testIsGameClear(){}
  void testIsGameOver(){}
}