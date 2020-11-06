PImage img1,img2, img3,gazou[];
// Prepare three reels for the slot.Because.To make it easier to make a complete decision
void slot(){
  textAlign(CENTER);
  fill(0);
  textSize(30);
  int i;
  
  
  img1 = loadImage("Image/batt.png");
  img2 = loadImage("Image/robot.png");
  img3 = loadImage("Image/denchu.png");
  
  gazou = new PImage[]{null,img1,img2,img3};  
  //BOX[0]
  if (box[0] == 0){
    i = (int)random(3)+1;
    image(gazou[i], 120, 120);
    if(keyPressed){
      if (keyCode == LEFT){
        box[0] = i;
      }
    }
  }
  else if (box[0] != 0){
    image(gazou[box[0]],120,120);
  }
  
  // BOX[1]
  if (box[1] == 0){
    i = (int)random(3)+1;
    image(gazou[i], 120+100, 120);
    if(keyPressed){
      if (keyCode == DOWN){
        box[1] = i;
      }
    }
  }
  else if (box[1] != 0){
    image(gazou[box[1]],120+100,120);
  }
  
  
  // BOX[2]
  if (box[2] == 0){
    i = (int)random(3)+1;
    image(gazou[i], 120+200, 120);
    if(keyPressed){
      if (keyCode == RIGHT){
        box[2] = i;
      }
    }
  }
  else if (box[2] != 0){
    image(gazou[box[2]],120+200,120);
  }
}
