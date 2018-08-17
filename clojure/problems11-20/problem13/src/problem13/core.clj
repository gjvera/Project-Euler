(ns problem13.core)

(defn -main
  []
  (println (subs (str (reduce + (map clojure.edn/read-string (clojure.string/split-lines (slurp *in*))))) 0 10)))
