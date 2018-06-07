(ns problem1.core)

(defn mod3or5?
  [x]
  (cond
    (= (mod x 3) 0) x
    (= (mod x 5) 0) x
    :else 0))

(defn -main 
  []
   (println (reduce + (map mod3or5? (range 1 1000)) )))
