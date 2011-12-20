(ns tosser.tosser
  (:use [tosser.core :only [chart-lines sample-scores]])
  (:use [clojure.string :only [join]]))

(defn ^{:export chart} chart [m n]
  (join "\n" (chart-lines m n)))
