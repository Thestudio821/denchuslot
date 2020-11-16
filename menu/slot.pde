class Slot{
  Slot(){}
  
  int result = 0;
  int NONE = 0;
  int WIN = 1;
  int LOSE = 2;
  
  int trials;
  int betCoins;
  int magnification;
  
  int targetCoins = 300;
  
  int batt = 1;
  int robot = 2;
  int denchu = 3;
  int daikonn = 4;
  int konnnyaku = 5;
  int egg = 6;
  int chikuwa = 7;
  int[] magnificationList = new int[9];
  
  boolean isLeftLane = false;
  boolean isCenterLane = false;  
  boolean isRightLane = false;
  
  final int leftPoint = 120;
  final int centerPoint = 220;
  final int rightPoint = 320;
  
  Lane leftLane = new Lane(leftPoint);
  Lane centerLane = new Lane(centerPoint);
  Lane rightLane = new Lane(rightPoint);
  
  Player player = new Player();
  
  void coreControl(){
    if(key == 'q'){
      quit();
    }else if(key == 'b'){
      state = START;
      leftLane.RestartLane();
      centerLane.RestartLane();
      rightLane.RestartLane();
    } else {
      laneControl();
    }
    
  }
  void laneControl(){
      if (key == ' ' && leftLane.lane[0] != 0 && centerLane.lane[0] != 0 && rightLane.lane[0] != 0){
        result = NONE;
        if (trials != 0){
          decision();
        }
        trials++;
        leftLane.resetLane();
        centerLane.resetLane();
        rightLane.resetLane();
        isLeftLane = false;
        isCenterLane = false;  
        isRightLane = false; 
      } else if (key == 'a' && trials != 0 && isLeftLane == false){
          isLeftLane = true;
          leftLane.stopLane();
          allLane();
      } else if (key == 's' && trials != 0 && isCenterLane == false){
          isCenterLane = true;
          centerLane.stopLane();
          allLane();
      } else if (key == 'd' && trials != 0 && isRightLane == false){
          isRightLane = true;
          rightLane.stopLane();
          allLane();
      }
  }
  
  void allLane(){
    if (isLeftLane == true && isCenterLane == true && isRightLane == true){
      calcMagnification();
    }
  }
  
  void lever(){
      leftLane.moveLane();
      centerLane.moveLane();
      rightLane.moveLane();
  }
  
  void calcMagnification(){
        if (magnificationList[0] <= 0 && leftLane.lane[0] == leftLane.lane[1] && leftLane.lane[1] == leftLane.lane[2]){
          result = WIN;
          magnificationList[0] = 1;
          magniSwitch(leftLane.lane[0]);
          calcMagnification();
      } else if (magnificationList[0] <= 1 && centerLane.lane[0] == centerLane.lane[1] && centerLane.lane[1] == centerLane.lane[2]){
          result = WIN;  
          magnificationList[0] = 2;
          magniSwitch(centerLane.lane[0]);
          calcMagnification();
      } else if (magnificationList[0] <= 2 && rightLane.lane[0] == rightLane.lane[1] && rightLane.lane[1] == rightLane.lane[2]){
          result = WIN;  
          magnificationList[0] = 3;
          magniSwitch(rightLane.lane[0]);
          calcMagnification();
      } else if (magnificationList[0] <= 3 && leftLane.lane[0] == centerLane.lane[0] && centerLane.lane[0] == rightLane.lane[0]){
          result = WIN;  
          magnificationList[0] = 4;
          magniSwitch(leftLane.lane[0]);
          calcMagnification();
      } else if (magnificationList[0] <= 4 && leftLane.lane[1] == centerLane.lane[1] && centerLane.lane[1] == rightLane.lane[1]){
          result = WIN;  
          magnificationList[0] = 5;
          magniSwitch(leftLane.lane[1]);
          calcMagnification();
      } else if (magnificationList[0] <= 5 && leftLane.lane[2] == centerLane.lane[2] && centerLane.lane[2] == rightLane.lane[2]){
          result = WIN;
          magnificationList[0] = 6;
          magniSwitch(leftLane.lane[2]);
          calcMagnification();
      } else if (magnificationList[0] <= 6 && leftLane.lane[0] == centerLane.lane[1] && centerLane.lane[1] == rightLane.lane[2]){
          result = WIN;
          magnificationList[0] = 7;
          magniSwitch(leftLane.lane[0]);
          calcMagnification();
      } else if (magnificationList[0] <= 7 && leftLane.lane[2] == centerLane.lane[1] && centerLane.lane[1] == rightLane.lane[0]){
          result = WIN;
          magnificationList[0] = 8;
          magniSwitch(leftLane.lane[2]);
          calcMagniList();
          magnificationList = new int[9]; 
      } else if (magnificationList[0] == 0){
          result = LOSE;
      } else {
          calcMagniList();
          magnificationList = new int[9]; 
      }
  }
  void magniSwitch(int firstLane){
      switch(firstLane){
          case 1:
              magnificationList[magnificationList[0]] = batt;
              break;
          case 2:
              magnificationList[magnificationList[0]] = robot;
              break;
          case 3:
              magnificationList[magnificationList[0]] = denchu;
              break;
          case 4:
              magnificationList[magnificationList[0]] = daikonn;  
              break;
          case 5:
              magnificationList[magnificationList[0]] = konnnyaku;   
              break;
          case 6:
              magnificationList[magnificationList[0]] = egg;
              break;
          case 7:
              magnificationList[magnificationList[0]] = chikuwa;      
              break;
      }
  }
  
  void calcMagniList(){
        magnification = 0;
        for (int i=1;i<=8;i++){
          magnification += magnificationList[i];
        }
        calcCoins();
  }
  
  void calcCoins(){
     player.haveCoins += magnification * player.cost;
  }
  
  void message(){
    if (result == LOSE){
      textSize(30);
      text("YOU LOSE",180,80);
      textSize(15);
    }else if (result == WIN){
      textSize(30);
      text("YOU WIN",180,80);
      textSize(15);
    }else if (result == NONE){
      text("Waithing...",215,480);
    } 
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

class TestSlot{
  Slot testSlot = new Slot();

  void testDicision(){
    //game clear test
    testSlot.player.haveCoins = testSlot.targetCoins + 1;
    testSlot.decision();
    assert state == CLEAR : "decision error. expected:CLEAR(=2) but got:" + state;
    state = START;
    
    //game over test
    testSlot.player.haveCoins = 0;
    testSlot.decision();
    assert state == FAULT : "decision error. expected:FAULT(=3) but got:" + state;
    state = START;
  }
}
