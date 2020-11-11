String file[] = {"Image/batt.png","Image/denchu.png","Image/robot.png","Image/oden.png"};
int[][] lane = {{0, 0, 0},{0, 0, 0},{0, 0, 0}};
int i,j,k;

void moveLane(){ //Rotation of the picture
  textAlign(CENTER);
  fill(0);
  textSize(30);
  
  
  if (lane[0][0] == 0){
    i = (int)random(9)+1;
    j = (int)random(9)+1;
    k = (int)random(9)+1;
    text(i, 150, 160);
    text(j, 150, 260);
    text(k, 150, 360);
  }
  else if(lane[0][0] != 0){
    text(lane[0][0], 150, 160);
    text(lane[1][0], 150, 260);
    text(lane[2][0], 150, 360);
    
  }
  if (lane[0][1] == 0){
    i = (int)random(9)+1;
    text(i,250,160);
  }
  else if(lane[0][1] != 0){
    text(lane[0][1],250,160);
  }
  
  if (lane[0][2] == 0){
    k = (int)random(9)+1;
    text(k,350,160);
  }
  else if(lane[0][2] != 0){
    text(lane[0][2],350,160);
  }
}

void stopLane(){
  if (key == 'a'){
    lane[0][0] = i;
    lane[1][0] = j;
    lane[2][0] = k;
  }
  if (key == 's'){
    lane[0][1] = i;
    lane[1][1] = j;
    lane[2][1] = k;
  }
  if (key == 'd'){
    lane[0][2] = i;
    lane[1][2] = j;
    lane[2][2] = k;
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
