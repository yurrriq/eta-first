(defproject eta-first "0.1.0-SNAPSHOT"
  :description "Simple Eta -> Clojure interop example"
  :url "https://github.com/yurrriq/eta-first"
  :license {:name "BSD 3-Clause"
            :url "https://spdx.org/licenses/BSD-3-Clause"}
  :dependencies [[org.clojure/clojure "1.8.0"]
                 [eta.example/eta-first "0.1.0.0"]]
  :main ^:skip-aot eta-first.core
  :repositories [["project" "file:_repo"]]
  :source-paths ["src/clojure"]
  :target-path "target/%s"
  :profiles {:uberjar {:aot :all}})
