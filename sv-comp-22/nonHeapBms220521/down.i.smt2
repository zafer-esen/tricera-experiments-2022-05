(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main13 (Int Int Int Int) Bool)
(declare-fun inv_main5 (Int Int Int) Bool)
(declare-fun inv_main6 (Int Int Int) Bool)
(assert (forall ((var0 Int)) (inv_main5 var0 0 0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main13 var3 var2 var1 var0) (<= 0 (+ (+ var0 (- 1)) (- 1))))) (inv_main13 var3 (+ var2 (- 1)) var1 (+ var0 (- 1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main6 var2 var1 var0) (and (<= 0 (+ var2 (- 1))) (not (<= 0 (+ (+ var2 (* (- 1) var0)) (- 1))))))) (inv_main13 var2 var1 var0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main5 var3 var2 var1)) (inv_main6 var0 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (inv_main6 var2 var1 var0) (<= 0 (+ (+ var2 (* (- 1) var0)) (- 1))))) (inv_main6 var2 (+ var1 1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main13 var3 var2 var1 var0) (not (<= 0 (+ var2 (- 1))))))))
(check-sat)
