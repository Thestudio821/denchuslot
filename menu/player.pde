class Player{
  
  int haveCoins = 30;
  int cost = 10;
  
  void betCoins(){
    haveCoins -= cost;
  }
  
  void pushButton(){
    if (keyPressed){
      slot.coreControl();
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
