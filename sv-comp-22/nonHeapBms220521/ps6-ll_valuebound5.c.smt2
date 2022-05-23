(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main22 (Int Int Int Int) Bool)
(declare-fun inv_main23 (Int Int Int Int) Bool)
(declare-fun inv_main30 (Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (inv_main4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int)) (or (not (and (inv_main4 var14 var13 var12 var11) (and (and (not (= var10 0)) (and (and (and (and (= var9 var8) (= var7 var6)) (= var5 var4)) (= var3 var2)) (or (and (<= 0 (+ 256 (* (- 1) var8))) (= var10 1)) (and (not (<= 0 (+ 256 (* (- 1) var8)))) (= var10 0))))) (and (not (= var1 0)) (and (and (and (and (= var8 var0) (= var6 var13)) (= var4 var12)) (= var2 var11)) (or (and (and (<= 0 var0) (<= 0 (+ 5 (* (- 1) var0)))) (= var1 1)) (and (not (and (<= 0 var0) (<= 0 (+ 5 (* (- 1) var0))))) (= var1 0)))))))) (inv_main23 var9 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main23 var7 var6 var5 var4) (and (<= 0 (+ (+ var7 (* (- 1) var4)) (- 1))) (and (and (and (= var3 var7) (= var2 (+ var6 1))) (= var1 (+ (* (* (* (* (+ var6 1) (+ var6 1)) (+ var6 1)) (+ var6 1)) (+ var6 1)) var5))) (= var0 (+ var4 1)))))) (inv_main23 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (inv_main22 var3 var2 var1 var0)) (inv_main30 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (or (not (and (inv_main23 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main22 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main23 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* (* (* (* (* (* (- 2) var2) var2) var2) var2) var2) var2) (* (- 1) (* (* (* (* (* 6 var2) var2) var2) var2) var2))) (* (- 1) (* (* (* (* 5 var2) var2) var2) var2))) (* var2 var2)) (* 12 var1)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main22 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* (* (* (* (* (* (- 2) var2) var2) var2) var2) var2) var2) (* (- 1) (* (* (* (* (* 6 var2) var2) var2) var2) var2))) (* (- 1) (* (* (* (* 5 var2) var2) var2) var2))) (* var2 var2)) (* 12 var1)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (not (and (inv_main30 var3 var2 var1 var0) (not (= (* var3 var2) (* var2 var2)))))))
(check-sat)
