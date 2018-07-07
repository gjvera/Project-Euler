(ns problem25.core)

(def gen-fib
  (lazy-cat [0 1] (map + (rest gen-fib) gen-fib)))

(defn -main
  []
  (println (first (filter #(> (count %) 1000) (map str gen-fib)))))
