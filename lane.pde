PImage img1,img2,img3,img4,img5,img6,img7,img[];
int[][] lane = {{0, 0, 0},{0, 0, 0},{0, 0, 0}};
int i,j,k;


void moveLane(){ //Rotation of the picture
  img1 = loadImage("Image/batt.png");
  img2 = loadImage("Image/robot.png");
  img3 = loadImage("Image/denchu.png");
  img4 = loadImage("Image/daikon.png");
  img5 = loadImage("Image/konnyaku.png");
  img6 = loadImage("Image/egg.png");
  img7 = loadImage("Image/chikuwa.png");
  img = new PImage[]{null,img1,img2,img3,img4,img5,img6,img7};
  
  textAlign(CENTER);
  fill(0);
  textSize(30);
  
  
  if (lane[0][0] == 0){
    i = (int)random(1,img.length);
    j = (int)random(1,img.length); 
    k = (int)random(1,img.length);
    image(img[i], 120, 120);
    image(img[j], 120, 220);
    image(img[k], 120, 320);
  }
  else if(lane[0][0] != 0){
    image(img[lane[0][0]], 120, 120);
    image(img[lane[1][0]], 120, 220);
    image(img[lane[2][0]], 120, 320);
    
  }
  if (lane[0][1] == 0){
    i = (int)random(1,img.length);
    j = (int)random(1,img.length);
    k = (int)random(1,img.length);
    image(img[i], 220, 120);
    image(img[j], 220, 220);
    image(img[k], 220, 320);
  }
  else if(lane[0][1] != 0){
    image(img[lane[0][1]], 220, 120);
    image(img[lane[1][1]], 220, 220);
    image(img[lane[2][1]], 220, 320);
  }
  
  if (lane[0][2] == 0){
    i = (int)random(1,img.length);
    j = (int)random(1,img.length);
    k = (int)random(1,img.length);
    image(img[i], 320, 120);
    image(img[j], 320, 220);
    image(img[k], 320, 320); 
  }
  else if(lane[0][2] != 0){
    image(img[lane[0][2]], 320, 120);
    image(img[lane[1][2]], 320, 220);
    image(img[lane[2][2]], 320, 320);
  }
}

void stopLane(){
  if (key == 'a'&& lane[0][0] == 0){
    lane[0][0] = i;
    lane[1][0] = j;
    lane[2][0] = k;
  }
  if (key == 's'&& lane[0][1] == 0){
    lane[0][1] = i;
    lane[1][1] = j;
    lane[2][1] = k;
  }
  if (key == 'd' && lane[0][2] == 0){
    lane[0][2] = i;
    lane[1][2] = j;
    lane[2][2] = k;
  }
  if (lane[0][0] != 0 && lane[0][1] != 0 && lane[0][2] != 0 && haveCoins <= 0){
    state = FAULT;
  }
}

 
void resetLanes(){
   if(lane[0][0] != 0 && lane[0][1] != 0 && lane[0][2] != 0){
     for (int i = 0; i <= 2; i++){
       for (int j = 0; j <= 2; j++){
         lane[i][j] = 0;
       }
     }
  }
}
