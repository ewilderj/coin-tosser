

class Experiment {
  final int numRuns;
  final int numTosses;
  HashMap<int, int> results;
  
  Experiment(this.numRuns, this.numTosses);
  
  void run() {
    results = new HashMap<int, int>();
    Game g = new Game(numTosses);
    for(int i = 0; i < numRuns; i++) {
      int score = g.runAndGetScore();
      if (results.containsKey(score)) {
        results[score] = results[score] + 1;
      } else {
        results[score] = 1;
      }
    }
  }
 
  String asciiGraph() {
    assert (results != null);
    List<int> keys = results.getKeys();
    keys.sort((a,b) {
      if (a == b) {
        return 0; 
      } else if (a > b) {
        return 1;
      } else {
        return -1;
      }
    });
    
    StringBuffer graph = new StringBuffer();
    int min = Util.min(keys);
    int max = Util.max(keys);
    int range = Math.max(Util.abs(min), Util.abs(max));   

    for (int k = (-range - 1); k <= (range + 1); k++) {
      if (results.containsKey(k)) {
        graph.add(k.toString() + "\t" + Util.asterisks(results[k]) + "\n");
      } else {
        graph.add(k.toString() + "\n");
      }
    }
    
    return graph.toString();
  }
  
}
