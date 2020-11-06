int box[][] = {{0, 0, 0},{0, 0, 0},{0, 0, 0}};

void setup(){
  size(500, 500);
  strokeWeight(2);
  frameRate(15);
  
  
}

void draw(){
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
  slot();
  messeage();
  reset();
  exit_game();
}
