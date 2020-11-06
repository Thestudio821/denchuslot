PImage img1,img2, img3,gazou[];

void slot(){
  textAlign(CENTER);
  fill(0);
  textSize(30);
  int i, j, k;
  
  img1 = loadImage("Image/batt.png");
  img2 = loadImage("Image/robot.png");
  img3 = loadImage("Image/denchu.png");
  
  gazou = new PImage[]{null,img1,img2,img3};
  // Box of the left
  if (box[0][0] == 0){
    i = (int)random(3) + 1; // Randomly generate from 1 to 3
    j = (int)random(3) + 1;
    k = (int)random(3) + 1;
    
    image(gazou[i], 120, 120);
    image(gazou[j], 120, 220);
    image(gazou[k], 120, 320);
    if(keyPressed){
      if (keyCode == LEFT){
        box[0][0] = i;         //← Save the value when the key is pressed in the array
        box[1][0] = j;
        box[2][0] = k;
      }
    }
  }
  else if (box[0][0] != 0){
    
    image(gazou[box[0][0]], 120, 120);
    image(gazou[box[1][0]], 120, 220);
    image(gazou[box[2][0]], 120, 320);
  }
  
  // Box of the center
  if (box[0][1] == 0){
    i = (int)random(3) + 1;
    j = (int)random(3) + 1;
    k = (int)random(3) + 1;
    
    image(gazou[i], 220, 120);
    image(gazou[j], 220, 220);
    image(gazou[k], 220, 320);
    if(keyPressed){
      if (keyCode == DOWN){
        box[0][1] = i;         //← Save the value when the key is pressed in the array
        box[1][1] = j;
        box[2][1] = k;
      }
    }
  }
  else if (box[0][1] != 0){
    image(gazou[box[0][1]], 220, 120);
    image(gazou[box[1][1]], 220, 220);
    image(gazou[box[2][1]], 220, 320);
  }
  
  //Box of the right
  if (box[0][2] == 0){
    i = (int)random(3) + 1;
    j = (int)random(3) + 1;
    k = (int)random(3) + 1;
    
    image(gazou[i], 320, 120);
    image(gazou[j], 320, 220);
    image(gazou[k], 320, 320);
    if(keyPressed){
      if (keyCode == RIGHT){
        box[0][2] = i;         //← Save the value when the key is pressed in the array
        box[1][2] = j;
        box[2][2] = k;
      }
    }
  }
  else if (box[0][2] != 0){
    image(gazou[box[0][1]], 320, 120);
    image(gazou[box[1][1]], 320, 220);
    image(gazou[box[2][1]], 320, 320);
  }
}
