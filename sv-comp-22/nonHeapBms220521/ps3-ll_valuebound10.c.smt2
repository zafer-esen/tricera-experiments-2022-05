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
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main4 var9 var8 var7 var6) (and (not (= var5 0)) (and (and (and (and (= var4 var3) (= var2 var8)) (= var1 var7)) (= var0 var6)) (or (and (and (<= 0 var3) (<= 0 (+ 10 (* (- 1) var3)))) (= var5 1)) (and (not (and (<= 0 var3) (<= 0 (+ 10 (* (- 1) var3))))) (= var5 0))))))) (inv_main17 var4 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main17 var7 var6 var5 var4) (and (<= 0 (+ (+ var7 (* (- 1) var4)) (- 1))) (and (and (and (= var3 var7) (= var2 (+ var6 1))) (= var1 (+ (* (+ var6 1) (+ var6 1)) var5))) (= var0 (+ var4 1)))))) (inv_main17 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main17 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main16 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main17 var3 var2 var1 var0) (not (= (+ (+ (+ (* 6 var1) (* (- 1) (* (* (* 2 var2) var2) var2))) (* (- 1) (* (* 3 var2) var2))) (* (- 1) var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main16 var3 var2 var1 var0) (not (= (+ (+ (+ (* 6 var1) (* (- 1) (* (* (* 2 var2) var2) var2))) (* (- 1) (* (* 3 var2) var2))) (* (- 1) var2)) 0))))))
(check-sat)
