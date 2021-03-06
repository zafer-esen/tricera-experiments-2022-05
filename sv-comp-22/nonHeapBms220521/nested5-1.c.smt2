(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main12 (Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int Int) Bool)
(declare-fun inv_main21 (Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int Int) Bool)
(declare-fun inv_main7 (Int Int Int Int Int) Bool)
(assert (inv_main7 0 0 0 0 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main22 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 10 (* (- 1) var0)) (- 1)))))) (inv_main21 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main18 var4 var3 var2 var1 var0) (<= 0 (+ (+ 10 (* (- 1) var2)) (- 1))))) (inv_main22 var4 var3 var2 var1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main22 var4 var3 var2 var1 var0) (<= 0 (+ (+ 10 (* (- 1) var0)) (- 1))))) (inv_main22 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main7 var4 var3 var2 var1 var0)) (inv_main12 0 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main12 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 268435455 (* (- 1) (+ var1 1))) (- 1))) (not (<= 0 (+ (+ 10 (* (- 1) var4)) (- 1))))))) (inv_main12 0 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main18 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 10 (* (- 1) (+ var3 1))) (- 1)))) (not (<= 0 (+ (+ 10 (* (- 1) var2)) (- 1))))))) (inv_main12 (+ var4 1) (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main21 var4 var3 var2 var1 var0)) (inv_main18 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main12 var4 var3 var2 var1 var0) (<= 0 (+ (+ 10 (* (- 1) var4)) (- 1))))) (inv_main18 var4 0 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main18 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 10 (* (- 1) (+ var3 1))) (- 1))) (not (<= 0 (+ (+ 10 (* (- 1) var2)) (- 1))))))) (inv_main18 var4 (+ var3 1) 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main21 var4 var3 var2 var1 var0) (and (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var5)) (- 1))) (<= 0 (+ (+ 4 (* 1 var5)) (- 1)))) (or (not (<= 0 (+ var5 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var5) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 4 var6) var5))) (= var5 0))))))
(check-sat)
