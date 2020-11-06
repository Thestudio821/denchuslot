void message(){
  // WIN
  if ((box[0] > 0) && (box[0] == box[1]) && (box[1] == box[2])){
    textSize(30);
    text("YOU WIN!", 250, 60);
    textSize(10);
    text("Click to restart", 250, 80);
    
  }
  // LOSE
  else if ((box[0] > 0) && (box[1] > 0) && (box[2] > 0)){
    textSize(30);
    text("YOU LOSE!", 250, 60);
    textSize(10);
    text("Click to restart", 250, 80);
    
  }
  
  // message
  textSize(15);
  text("'←' to stop", 150, 220);
  text("'↓' to stop", 250, 220);
  text("'→' to stop", 350, 220);
}
