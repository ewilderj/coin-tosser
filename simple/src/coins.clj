(ns coin-tosser.simple)
(use '[clojure.string :only (join)])

(defn coin-toss
  "Tosses a fair coin and returns true for heads, false for tails"
  []
  (= 1 (rand-int 2)))

(defn toss-score
  "Win $1 for heads, lose $1 for tails"
  [toss]
  (if toss 1 -1))

(defn count-winnings
  "Figure out the net result for a sequence of tosses"
  [results]
  (reduce + (map toss-score results)))

(defn sample-score
  "Run an experiment of n tosses and figure out the result"
  [n]
  (count-winnings (repeatedly n coin-toss)))

(defn sample-scores
  "Run a sequence of experiments n times with m tosses"
  [n m]
  (repeatedly n #(sample-score m)))

(defn tally-scores
  "Return a map of frequency of results"
  [scores]
  (let
      ;; define an auxiliary function that registers a
      ;; score into a map holding all the score tallies
      [tally-score (fn [results score]
                     (if-let [prev-count (results score)]
                       (assoc results score (inc prev-count))
                       (assoc results score 1)))]
    (reduce tally-score {} scores)))

(defn chart-scores
  "Given a list of scores, print a simple ASCII frequency graph"
  [scores]
  (let [tally (tally-scores scores)
        low (apply min (keys tally))
        high (apply max (keys tally))
        r (inc (max (Math/abs low) high))]
    (doseq [val (range (- r) (inc r))]
      (print val)
      (print "\t")
      (if-let [c (tally val)]
        (print (join (repeat c "*"))))
      (println)
    )))