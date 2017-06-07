(ns eta-first.core
  (:import [eta.example Fibonacci])
  (:gen-class))


(defn- parse-int [s default]
  (try
    (Integer/parseInt s)
    (catch Exception _
      default)))

(defn fib
  "Return the nth Fibonacci number."
  [n]
  (. (Fibonacci.) (fib n)))


(defn -main
  "I don't do a whole lot ... yet."
  [& [s]]
  (let [n (parse-int s 30)]
    (println (format "(fib %d) ;=> %d" n (fib (bigint n))))))
