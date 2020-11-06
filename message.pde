void  messeage(){
  // WIN
  if (((box[0][0] > 0) && (box[0][0] == box[0][1]) && (box[0][1] == box[0][2])) 
  ||  ((box[1][0] > 0) && (box[1][0] == box[1][1]) && (box[1][1] == box[1][2])) 
  ||  ((box[2][0] > 0) && (box[2][0] == box[2][1]) && (box[2][1] == box[2][2]))){
    
    textSize(30);
    text("YOU WIN!", 250, 60);
    textSize(10);
    text("Shift to restart", 250, 80);
  }
  // LOSE
  else if ((box[0][0] > 0) && (box[0][1] > 0) && (box[0][2] > 0)){
    textSize(30);
    text("YOU LOSE!", 250, 60);
    textSize(10);
    text("Shift to restart", 250, 80);
  }
  
  // message
  textSize(15);
  text("'←' to stop", 150, 420);
  text("'↓' to stop", 250, 420);
  text("'→' to stop", 350, 420);
}
