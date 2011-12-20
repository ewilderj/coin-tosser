Simple coin tosser
==================

Simulate the results of a coin toss experiment. If a coin lands heads
you win a dollar, if it lands tails you lose a dollar.

Build and run like this

    $ lein compile

And then open the file "tosser-dev.html" in your web browser.
Hit the "Run simulation" button with the default values.

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

For a distributable version, use
`lein compile '{:optimizations :simple}'` -- then host
`tosser.html` and the `tosser.js` file on your web site.

A note
------

My UI uses jQuery for a bit of processing. Strictly speaking, this is
a bit needless as Clojurescript already brings in Google Closure,
which has its own DOM manipulation abilities. However, using jQuery is
handy for the purposes of this demo because many people understand how
it works, and it makes it plain where the separation between the
compiled Clojurescript and the page's Javascript lies.

