int betCoins;
int magnification;

void laneControl(){
  if(key == 'q'){
    quit();
  }else if (key == ' '){
    lane1.resetLane();
    lane2.resetLane();
    lane3.resetLane();
  } else if (key == 'a'){
    lane1.stopLane();
  } else if (key == 's'){
    lane2.stopLane();
  } else if (key == 'd'){
    lane3.stopLane();
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
