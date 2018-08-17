(ns problem25.core)
(def gen-fib
      (lazy-cat [[0 0N] [1 1N]] (map (fn [[i1 f1] [i2 f2]] [(inc i1) (+ f1 f2)]) (rest gen-fib) gen-fib)))

(defn -main
  []
  (println (first (first (filter #(>= (count (str (last %))) 1000) gen-fib)))))
