int state = 0; //change screen

final int START = 0;
final int GAME = 1;
final int CLEAR = 2;
final int FAULT = 3;

Slot slot = new Slot();

//public void settings(){
  //size(500, 500);
//}

void setup(){
  size(500,500);
  strokeWeight(2);
  frameRate(10);
}

void draw(){ 
  if (state == START) {
    title(); 
  } else if (state == GAME) {
    game(); 
  } else if (state == CLEAR) {
    gameClear(); 
  } else if (state == FAULT) {
    gameOver();
  }
}

void title(){
  slot.player.haveCoins = 100;
  slot.trials = 0;
  slot.leftLane.RestartLane();
  slot.centerLane.RestartLane();
  slot.rightLane.RestartLane();
  background(255); 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Game Title", width * 0.5, height * 0.3);
  text("Press any key to start", width * 0.5, height * 0.7);
  if (keyPressed) {
    state = GAME;
    
  }
}

void game(){
  background(255);
  fill(255);
  rect(100,100,100,100);
  rect(200,100,100,100);
  rect(300,100,100,100);
  rect(100,200,100,100);
  rect(200,200,100,100);
  rect(300,200,100,100);
  rect(100,300,100,100);
  rect(200,300,100,100);
  rect(300,300,100,100);
  
  
  
  textSize(20);
  fill(0);
  textAlign(LEFT);
  text("Medals:"+slot.player.haveCoins,10,50);
  text("Trials:"+slot.trials,10,30);
  textSize(15);
  fill(0);
  slot.message();
  text("Space:Restart the slot",10,450);
  text("B:Back to the title",10,470);
  text("A to stop", 120, 420);
  text("S to stop", 220, 420);
  text("D to stop", 320, 420);
  
  slot.player.pushButton();
  slot.lever();
}
void quit(){
  exit();
}

void gameClear(){
  PImage clearImage = loadImage("Image/gameClear.png");
  clearImage.resize(500, 500);

  background(clearImage); 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Press any key to Restart", width * 0.5, height * 0.7);
  if (keyPressed) {
    delay(1000);
    state = START;
    slot.player.haveCoins = 100;
  }
}

void gameOver(){
  PImage overImage = loadImage("Image/gameOver.png");
  overImage.resize(500, 500);

  background(overImage); 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Press any key to Restart", width * 0.5, height * 0.7);
  
  if (keyPressed) {
    delay(1000);
    state = START;
    slot.player.haveCoins = 100;
  }
}
