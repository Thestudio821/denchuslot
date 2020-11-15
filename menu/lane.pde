class Lane{
  Lane(int point){
    this.point = point;
  }
  
  PImage img1,img2,img3,img4,img5,img6,img[];
  int i,j,k,point;
  int lane[] = {3,3,3};
  void moveLane(){
    img1 = loadImage("Image/batt.png");
    img2 = loadImage("Image/robot.png");
    img3 = loadImage("Image/denchu.png");
    img4 = loadImage("Image/daikon.png");
    img5 = loadImage("Image/konnyaku.png");
    img6 = loadImage("Image/egg.png");
    //img7 = loadImage("Image/chikuwa.png");
    img = new PImage[]{null,img1,img2,img3,img4,img5,img6};
    
     if (lane[1] == 0){
        i = (int)random(1,img.length);
        j = (int)random(1,img.length); 
        k = (int)random(1,img.length);
        image(img[i], point, 120);
        image(img[j], point, 220);
        image(img[k], point, 320);
     }
    else if(lane[0] != 0){
        image(img[lane[0]], point, 120);
        image(img[lane[1]], point, 220);
        image(img[lane[2]], point, 320);
    }
  }
  
  void stopLane(){
    if (lane[0] == 0){
      lane[0] = i;
      lane[1] = j;
      lane[2] = k;
    }
  }
  void resetLane(){
     if(lane[0]!= 0 && lane[1] != 0 && lane[2] != 0){
       lane[0] = 0;
       lane[1] = 0;
       lane[2] = 0;
    }
  }
  void RestartLane(){
     lane[0] = 3;
     lane[1] = 3;
     lane[2] = 3;
  }
}

class TestLane{
  int leftLane = 120;
  Lane testLane = new Lane(leftLane);
  
  //laneの値が0以外の時に回転しないかのテスト
  void testMoveLane(){
    int expected = 1;
    testLane.lane[0] = testLane.lane[1] = testLane.lane[2] = 1;
    testLane.moveLane();
    assert testLane.lane[0] == expected  : "moveLane Error. expected:"+expected+" but got:"+testLane.lane[0];
  }
  void testStopLane(){
    //laneの値が0以外の時のテスト
    int expected = 2;
    testLane.lane[0] = testLane.lane[1] = testLane.lane[2] = 2;
    testLane.stopLane();
    assert testLane.lane[0] == expected  : "stopLane Error1. expected:"+expected+" but got:"+testLane.lane[0];

    //laneの値が0の時のテスト
    expected = 3;
    testLane.lane[0] = testLane.lane[1] = testLane.lane[2] = 0;
    testLane.i = testLane.j = testLane.k = 3;
    testLane.stopLane();
    assert testLane.lane[0] == expected  : "stopLane Error2. expected:"+expected+" but got:"+testLane.lane[0];
  }
  void testResetLane(){
    //resetLaneのテスト
    int expected = 0;
    testLane.resetLane();
    assert testLane.lane[0] == expected  : "resetLane Error. expected:"+expected+" but got:"+testLane.lane[0];
  }
}
