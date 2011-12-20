(ns tosser.tosser
  (:require [tosser.core :as toss]
            [clojure.string :as string]
            ))

(defn ^:export chart
  "Create an ASCII chart of m * n samples"
  [m n]
  (string/join "\n" (toss/chart-lines (toss/sample-scores m n))))
