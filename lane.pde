String file[] = {"Image/batt.png","Image/denchu.png","Image/oden.pmg","Image/robot.pmg"};
int[] lane = {0,0,0};

void resetSlot(){
   if(mousePressed && lane[0] != 0 && lane[1] != 0 && lane[2] != 0){
    lane[0] = 0;
    lane[1] = 0;
    lane[2] = 0;
  }
}
