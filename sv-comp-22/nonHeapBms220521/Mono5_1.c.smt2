(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int) Bool)
(assert (inv_main5 0 10000000 5000000))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (and (<= 0 (+ var2 (- 5000000))) (<= 0 (+ (+ var1 (* (- 1) var2)) (- 1)))))) (inv_main5 (+ var2 1) var1 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (and (not (<= 0 (+ var2 (- 5000000)))) (<= 0 (+ (+ var1 (* (- 1) var2)) (- 1)))))) (inv_main5 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main5 var2 var1 var0) (not (<= 0 (+ (+ var1 (* (- 1) var2)) (- 1)))))) (inv_main6 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main6 var2 var1 var0) (= var0 0)))))
(check-sat)
