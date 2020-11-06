void reset(){
  if(mousePressed && box[0] != 0 && box[1] != 0 && box[2] != 0){
    box[0] = 0;
    box[1] = 0;
    box[2] = 0;
    count += 1;
  }
}
