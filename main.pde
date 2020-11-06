int[] box = {0, 0, 0};

int state = 0;
int count = 1;
//change screen
final int START = 0;
final int GAME = 1;

void setup(){
  size(500, 300);
  strokeWeight(2);
  frameRate(10);
}



void draw(){
  if (state == START) {
    title();
  } else if (state == GAME) {
    game();
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
  
  slot();
  message();
  reset();
  textSize(24);
  text("Count:"+count,250,270);
}
