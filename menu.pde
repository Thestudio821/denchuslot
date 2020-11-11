int state = 0; //change screen

final int START = 0;
final int GAME = 1;
final int CLEAR = 2;
final int FAULT = 3;

public void settings(){ //Now on hold
  size(500, 300);
}
void setup(){
  //size(500,300);
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
  
  // message
  textSize(15);
  text("A to stop", 150, 220);
  text("S to stop", 250, 220);
  text("D to stop", 350, 220);
  
  pushButton();
  moveLane();
  resetLanes();
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
  text("Press any key to start", width * 0.5, height * 0.7);
  if (keyPressed) {
    state = GAME;
  }
}

void gameOver(){
  background(255); 
  fill(0);
  textSize(24);
  textAlign(CENTER);
  text("Game Over", width * 0.5, height * 0.3);
  text("Press any key to start", width * 0.5, height * 0.7);
  if (keyPressed) {
    state = GAME;
  }
}
