(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main11 (Int Int Int Int Int) Bool)
(declare-fun inv_main12 (Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (or (not (and (and (<= 0 var2) (<= 0 var1)) (<= 0 var0))) (inv_main3 20000001 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main3 var5 var4 var3 var2 var1) (and (<= 0 (+ var5 (* (- 1) var0))) (<= 0 var0)))) (inv_main11 var5 var0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (and (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5)) (- 1))) (<= 0 (+ (+ 2 (* 1 var5)) (- 1)))) (or (not (<= 0 (+ var5 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var5) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 2 var6) var5))) (= var5 0)) (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main11 var4 var3 (+ var2 1) var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var5)) (- 1))) (<= 0 (+ (+ 2 (* 1 var5)) (- 1)))) (or (not (<= 0 (+ var5 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var5) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 2 var6) var5)))) (= var5 0))) (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main11 var4 var3 var2 (+ var1 1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main11 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main12 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main12 var4 var3 var2 var1 var0) (not (= (+ var2 var1) var0))))))
(check-sat)
