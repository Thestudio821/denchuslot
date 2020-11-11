String file[] = {"Image/batt.png","Image/denchu.png","Image/oden.pmg","Image/robot.pmg"};
int[] lane = {0,0,0};
int i,j,k; 

void moveLane(){ //Rotation of the picture
  textAlign(CENTER);
  fill(0);
  textSize(30);
  
  
  if (lane[0] == 0){
    i = (int)random(9) + 1;
    text(i, 150, 160);
  }
  else if(lane[0] != 0){
    text(lane[0],150,160);
  }
  if (lane[1] == 0){
    j = (int)random(9)+1;
    text(j,250,160);
  }
  else if(lane[1] != 0){
    text(lane[1],250,160);
  }
  
  if (lane[2] == 0){
    k = (int)random(9)+1;
    text(k,350,160);
  }
  else if(lane[2] != 0){
    text(lane[2],350,160);
  }
}

void stopLane(){
  if (key == 'a'){
    lane[0] = i;
  }
  if (key == 's'){
    lane[1] = j;
  }
  if (key == 'd'){
    lane[2] = k;
  }
}
void resetLanes(){
   if(mousePressed && lane[0] != 0 && lane[1] != 0 && lane[2] != 0){
    lane[0] = 0;
    lane[1] = 0;
    lane[2] = 0;
  }
}
