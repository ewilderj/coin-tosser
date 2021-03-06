(ns tosser.main
  (:require [tosser.core :as toss]
            [clojure.string :as string]
            [clojure.browser.repl :as repl]))

(defn ^:export chart
  "Create an ASCII chart of m * n samples"
  [m n]
  (string/join "\n" (toss/chart-lines (toss/sample-scores m n))))

;;; uncomment to connect the REPL from the browser
;;; see https://github.com/clojure/clojurescript/wiki/The-REPL-and-Evaluation-Environments
;;; (repl/connect "http://localhost:9000/repl")

