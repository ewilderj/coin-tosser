#library('tosser');

#import('dart:html');
#source('Util.dart');
#source('Game.dart');
#source('Experiment.dart');

class tosser {

  void main() {
    document.query("#input_form").on.submit.add((e) {
      // stop form submitting, then run the experiment
      e.preventDefault();
      run();
    });
  }
  
  int getParameter(String param) {
    InputElement ele = document.query("#${param}");
    return Math.parseInt(ele.value);
  }
  
  void run() {
    Experiment e = new Experiment(getParameter("runs"), getParameter("tosses"));
    e.run();
    document.query('#results').innerHTML = e.asciiGraph();
  }

}

void main() {
  new tosser().main();
}
