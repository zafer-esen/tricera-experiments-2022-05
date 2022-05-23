(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main15 (Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (inv_main3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main15 var2 var1 var0) (<= 0 (+ (+ 1000000 (* (- 1) var2)) (- 1))))) (inv_main15 (+ var2 1) (+ var1 var0) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main3 var3 var2 var1) (and (<= 0 var0) (<= 0 (+ 1 (* (- 1) var0)))))) (inv_main15 2 (+ 1 var0) (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (not (and (inv_main15 var2 var1 var0) (or (or (not (<= 0 (+ (+ var2 var0) (- 1)))) (not (<= 0 (+ 2 (* (- 1) (+ var2 var0)))))) (not (<= 0 (+ var2 (- 1)))))))))
(check-sat)
