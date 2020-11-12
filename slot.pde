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
  
  void laneControl(){
    switch(key){
      case 'q':
        quit();
        break;
      
      case ' ':
        leftLane.resetLane();
        centerLane.resetLane();
        rightLane.resetLane();
        break;
        
      case 'a':
        leftLane.stopLane();
        break;
      
      case 's':
        centerLane.stopLane();
        break;
      
      case 'd':
        rightLane.stopLane();
        break;
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
}
