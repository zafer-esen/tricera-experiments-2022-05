(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main18 (Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int) Bool)
(declare-fun inv_main25 (Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (inv_main3 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main18 var4 var3 var2 var1) (and (= var0 0) (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1)))))) (inv_main22 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main3 var5 var4 var3 var2) (and (<= 0 (+ var1 (- 1))) (and (= var0 var1) (<= 0 (+ (+ 1000000 (* (- 1) var1)) (- 1))))))) (inv_main18 0 0 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main18 var3 var2 var1 var0) (and (<= 0 (+ (+ var0 (* (- 1) (+ var3 1))) (- 1))) (not (<= 0 (+ (+ var0 (* (- 1) var2)) (- 1))))))) (inv_main18 (+ var3 1) (* 2 (+ var3 1)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main27 var3 var2 var1 var0)) (inv_main18 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main18 var4 var3 var2 var1) (and (not (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1)))) (and (not (= var0 0)) (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1))))))) (inv_main18 var4 (+ var3 1) var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main25 var3 var2 var1 var0) (not (<= 0 (+ (+ var0 (* (- 1) (+ var1 1))) (- 1)))))) (inv_main18 var3 (+ var2 1) (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main22 var3 var2 var1 var0)) (inv_main27 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main18 var4 var3 var2 var1) (and (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1))) (and (not (= var0 0)) (<= 0 (+ (+ var1 (* (- 1) var3)) (- 1))))))) (inv_main25 var4 var3 var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main25 var3 var2 var1 var0) (<= 0 (+ (+ var0 (* (- 1) (+ var1 1))) (- 1))))) (inv_main25 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main25 var3 var2 var1 var0) (not (<= 0 (+ var1 (* (- 2) var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main22 var3 var2 var1 var0) (not (<= 0 (+ var1 (* (- 1) var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main27 var3 var2 var1 var0) (not (<= 0 (+ var0 (* (- 1) var1))))))))
(check-sat)
