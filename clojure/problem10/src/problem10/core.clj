(ns problem10.core)

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
  (println (reduce + (filter is-prime? (range 2000000)))))
