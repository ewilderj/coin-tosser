(ns coin-tosser.main
  (:use [coin-tosser.core :only [chart-scores sample-scores]])
  (:gen-class))

(defn -main
  "Main entry point"
  [repetitions sample-size]
  (chart-scores (sample-scores (Integer/parseInt repetitions)
                               (Integer/parseInt sample-size))))
