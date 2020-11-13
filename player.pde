class Player{
  int targetCoins;
  int haveCoins = 100;
  
  
  void betCoins(){
    int cost = 10;
    haveCoins -= cost;
  }
  
  void pushButton(){
    if (keyPressed){
      slot.laneControl();
    }
  }
}

class TestPlayer{
  Player  testPlayer = new Player();

  void testBetCoins(){
    int expected = 190;
    testPlayer.haveCoins = 200;
    testPlayer.betCoins();
    assert testPlayer.haveCoins == expected  : "testBetCoins Error. expected:"+expected+" but got:"+testPlayer.haveCoins;
  }
}