void slot(){
  textAlign(CENTER);
  fill(0);
  textSize(30);
  int i, j, k;
  // Box of the left
  if (box[0][0] == 0){
    i = (int)random(3) + 1; // Randomly generate from 1 to 3
    j = (int)random(3) + 1;
    k = (int)random(3) + 1;
    text(i, 150, 160);
    text(j, 150, 260);
    text(k, 150, 360);
    if(keyPressed){
      if (keyCode == LEFT){
        box[0][0] = i;         //← Save the value when the key is pressed in the array
        box[1][0] = j;
        box[2][0] = k;
      }
    }
  }
  else if (box[0][0] != 0){
    text(box[0][0], 150, 160);
    text(box[1][0], 150, 260);
    text(box[2][0], 150, 360);
  }
  
  // Box of the center
  if (box[0][1] == 0){
    i = (int)random(3) + 1;
    j = (int)random(3) + 1;
    k = (int)random(3) + 1;
    text(i, 250, 160);
    text(j, 250, 260);
    text(k, 250, 360);
    if(keyPressed){
      if (keyCode == DOWN){
        box[0][1] = i;         //← Save the value when the key is pressed in the array
        box[1][1] = j;
        box[2][1] = k;
      }
    }
  }
  else if (box[0][1] != 0){
    text(box[0][1], 250, 160);
    text(box[1][1], 250, 260);
    text(box[2][1], 250, 360);
  }
  
  //Box of the right
  if (box[0][2] == 0){
    i = (int)random(3) + 1;
    j = (int)random(3) + 1;
    k = (int)random(3) + 1;
    text(i, 350, 160);
    text(j, 350, 260);
    text(k, 350, 360);
    if(keyPressed){
      if (keyCode == RIGHT){
        box[0][2] = i;         //← Save the value when the key is pressed in the array
        box[1][2] = j;
        box[2][2] = k;
      }
    }
  }
  else if (box[0][2] != 0){
    text(box[0][2], 350, 160);
    text(box[1][2], 350, 260);
    text(box[2][2], 350, 360);
  }
}
