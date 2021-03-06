Simple coin tosser
==================

Simulate the results of a coin toss experiment. If a coin lands heads
you win a dollar, if it lands tails you lose a dollar.

Build and run like this

    $ lein compile
    $ lein run 200 20

This executes `(chart-scores (sample-scores 200 20))` and yields something like
the following chart, simulating 200 runs of 20 coin tosses. The chart shows the
frequency of your net winnings after each run.

    -13	
    -12	*
    -11	
    -10	*******
    -9	
    -8	*******
    -7	
    -6	*****************
    -5	
    -4	*******************
    -3	
    -2	*************************
    -1	
    0	*********************************
    1	
    2	******************************
    3	
    4	*****************************
    5	
    6	*******************
    7	
    8	***********
    9	
    10	**
    11	
    12	
    13	

Build instructions
------------------

Ensure you have Clojure and Leiningen installed, and the project will
compile with `lein compile`.

