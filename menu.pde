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

void changescene(){
  
}
void title(){
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
  text("count the medals:"+slot.player.haveCoins,380,20);
  
  textSize(15);
  fill(0);
  text("Please space key",250,90);
  text("A to stop", 150, 420);
  text("S to stop", 250, 420);
  text("D to stop", 350, 420);
  
  slot.player.pushButton();
  slot.lever();
}
void quit(){
  exit();
}

void gameClear(){
  background(255); 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Game Clear", width * 0.5, height * 0.3);
  text("Press any key to Restart", width * 0.5, height * 0.7);
  
  if (keyPressed) {
    delay(1000);
    state = START;
    slot.player.haveCoins = 100;
  }
}

void gameOver(){
  background(255); 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Game Over", width * 0.5, height * 0.3);
  text("Press any key to Restart", width * 0.5, height * 0.7);
  
  if (keyPressed) {
    delay(1000);
    state = START;
    slot.player.haveCoins = 100;
  }
}
