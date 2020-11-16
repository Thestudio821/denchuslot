class Player{
  
  int haveCoins = 100;
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

  //betCoins()のテスト
  void testBetCoins(){
    int expected = 190;
    testPlayer.haveCoins = 200;
    testPlayer.betCoins();
    assert testPlayer.haveCoins == expected  : "testBetCoins Error. expected:"+expected+" but got:"+testPlayer.haveCoins;
  }
}
