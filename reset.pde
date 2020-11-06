void reset(){
  if(keyPressed){
    if(keyCode == SHIFT){
      box[0][0] = 0;
      box[1][0] = 0;
      box[2][0] = 0;
      
      box[0][1] = 0;
      box[1][1] = 0;
      box[2][1] = 0;
      
      box[0][2] = 0;
      box[1][2] = 0;
      box[2][2] = 0;
    }
  }
}
