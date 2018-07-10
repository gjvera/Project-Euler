(ns problem6.core)

(defn -main 
  []
  (println (- (int (Math/pow (reduce + (range 1 101)) 2)) (int (reduce + (map #(Math/pow % 2) (range 1 101)))))))
