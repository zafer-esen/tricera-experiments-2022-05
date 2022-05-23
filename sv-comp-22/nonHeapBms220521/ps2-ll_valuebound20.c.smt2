(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main16 (Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (inv_main4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main4 var9 var8 var7 var6) (and (not (= var5 0)) (and (and (and (and (= var4 var3) (= var2 var8)) (= var1 var7)) (= var0 var6)) (or (and (and (<= 0 var3) (<= 0 (+ 20 (* (- 1) var3)))) (= var5 1)) (and (not (and (<= 0 var3) (<= 0 (+ 20 (* (- 1) var3))))) (= var5 0))))))) (inv_main17 var4 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main17 var3 var2 var1 var0) (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1))))) (inv_main17 var3 (+ var2 1) (+ (+ var2 1) var1) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main17 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main16 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main17 var3 var2 var1 var0) (not (= (+ (+ (* var2 var2) (* (- 2) var1)) var2) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var2 var1 var0) (not (= (+ (+ (* var2 var2) (* (- 2) var1)) var2) 0))))))
(check-sat)