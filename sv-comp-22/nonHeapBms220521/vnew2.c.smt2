(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main15 (Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int Int) Bool)
(declare-fun inv_main9 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (and (and (<= 0 var3) (<= 0 var2)) (<= 0 var1)) (<= 0 var0))) (inv_main3 20000001 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main3 var5 var4 var3 var2 var1) (and (<= 0 (+ var5 (* (- 1) var0))) (<= 0 var0)))) (inv_main9 var5 var0 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main9 var4 var3 var2 var1 var0) (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1))))) (inv_main9 var4 var3 (+ var2 3) (+ var1 3) (+ var0 3)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main9 var4 var3 var2 var1 var0) (and (<= 0 (+ var3 (- 1))) (not (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1))))))) (inv_main15 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int)) (not (and (inv_main15 var4 var3 var2 var1 var0) (or (or (not (= var2 var0)) (not (= var0 var1))) (and (and (and (and (and (or (and (<= 0 (+ var4 2)) (<= 0 (+ (+ (+ var4 2) (* (- 1) var5)) (- 1)))) (and (not (<= 0 (+ var4 2))) (<= 0 (+ (+ (* (- 1) (+ var4 2)) (* (- 1) var5)) (- 1))))) (or (and (<= 0 (+ var4 2)) (<= 0 (+ (+ (+ var4 2) (* 1 var5)) (- 1)))) (and (not (<= 0 (+ var4 2))) (<= 0 (+ (+ (* (- 1) (+ var4 2)) (* 1 var5)) (- 1)))))) (or (not (<= 0 (+ var5 (- 1)))) (<= 0 (+ var2 (- 1))))) (or (not (<= 0 (+ (* (- 1) var5) (- 1)))) (<= 0 (+ (* (- 1) var2) (- 1))))) (= var2 (+ (* var6 (+ var4 2)) var5))) (= var5 0)))))))
(check-sat)
