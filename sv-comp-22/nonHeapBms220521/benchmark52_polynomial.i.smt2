(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main2 () Bool)
(declare-fun inv_main5 (Int) Bool)
(declare-fun inv_main8 (Int) Bool)
(assert inv_main2)
(assert (forall ((var0 Int)) (or (not (and (inv_main5 var0) (<= 0 (+ (+ 100 (* (- 1) (* var0 var0))) (- 1))))) (inv_main5 (+ var0 1)))))
(assert (forall ((var0 Int)) (or (not (and inv_main2 (and (<= 0 (+ (+ 10 (* (- 1) var0)) (- 1))) (<= 0 (+ (+ var0 10) (- 1)))))) (inv_main5 var0))))
(assert (forall ((var0 Int)) (or (not (and (inv_main5 var0) (not (<= 0 (+ (+ 100 (* (- 1) (* var0 var0))) (- 1)))))) (inv_main8 var0))))
(assert (forall ((var0 Int)) (not (and (inv_main8 var0) (not (= var0 10))))))
(check-sat)
