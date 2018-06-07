(ns problem2.core)
;generate a list of the fibonacci numbers
(def gen-fib 
  (lazy-cat [0 1] (map + (rest gen-fib) gen-fib)))

(defn -main 
  []
  (println (reduce + (filter even? (take-while (partial > 4000000) gen-fib)))))

