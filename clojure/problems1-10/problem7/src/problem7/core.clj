(ns problem7.core)

(defn is-prime? 
  [x]
  (if (= x 0) false
  (loop [iter 2 top (int (Math/sqrt x))]
    (if (> iter top)
      true
      (if (= 0 (mod x iter))
        false
(recur (inc iter) top))))))

(defn -main 
  []
  (println (nth (filter is-prime? (range)) 10001)))
