class Game {
  final int numTosses;
  
  Game(this.numTosses);
  
  bool toss() => Math.random() < 0.5;
  int score(bool result) => result ? 1 : -1;
  
  int runAndGetScore() {
    int runningScore = 0;
    
    for(int i=0; i<numTosses; i++) {
      runningScore += score(toss());
    }
    
    return runningScore;
  }
}
