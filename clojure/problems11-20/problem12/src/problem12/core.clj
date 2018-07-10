(ns problem12.core)

(defn num-of-divisors [n]
     (* 2 (count (filter #(= (mod n %) 0) ( range 2 (+ (int (Math/sqrt n)) 1) ) ) ) ))

(defn -main
  []
  (println (first (filter #(> (num-of-divisors % ) 500) (map #(reduce + (range %)) (range))))))
