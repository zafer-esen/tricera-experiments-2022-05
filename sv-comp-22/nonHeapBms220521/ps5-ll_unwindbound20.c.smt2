(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main16 (Int Int Int Int Int) Bool)
(declare-fun inv_main17 (Int Int Int Int Int) Bool)
(declare-fun inv_main26 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int)) (inv_main4 0 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main4 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 20 (* (- 1) var6)) (- 1))) (and (not (= var5 0)) (and (and (and (and (and (= var6 var11) (= var4 var3)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (or (and (<= 0 (+ 256 (* (- 1) var3))) (= var5 1)) (and (not (<= 0 (+ 256 (* (- 1) var3)))) (= var5 0)))))))) (inv_main17 (+ var6 1) var4 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main17 var9 var8 var7 var6 var5) (and (and (<= 0 (+ (+ 20 (* (- 1) var4)) (- 1))) (<= 0 (+ (+ var8 (* (- 1) var5)) (- 1)))) (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 (+ var7 1))) (= var1 (+ (* (* (* (+ var7 1) (+ var7 1)) (+ var7 1)) (+ var7 1)) var6))) (= var0 (+ var5 1)))))) (inv_main17 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main17 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var0)) (- 1)))))) (inv_main16 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main4 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 20 (* (- 1) var6)) (- 1)))) (and (not (= var5 0)) (and (and (and (and (and (= var6 var11) (= var4 var3)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (or (and (<= 0 (+ 256 (* (- 1) var3))) (= var5 1)) (and (not (<= 0 (+ 256 (* (- 1) var3)))) (= var5 0)))))))) (inv_main16 (+ var6 1) var4 0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int)) (or (not (and (inv_main17 var9 var8 var7 var6 var5) (and (and (not (<= 0 (+ (+ 20 (* (- 1) var4)) (- 1)))) (<= 0 (+ (+ var8 (* (- 1) var5)) (- 1)))) (and (and (and (and (= var4 var9) (= var3 var8)) (= var2 (+ var7 1))) (= var1 (+ (* (* (* (+ var7 1) (+ var7 1)) (+ var7 1)) (+ var7 1)) var6))) (= var0 (+ var5 1)))))) (inv_main16 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main16 var4 var3 var2 var1 var0)) (inv_main26 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main17 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* (* (* (* (* 6 var2) var2) var2) var2) var2) (* (* (* (* 15 var2) var2) var2) var2)) (* (* (* 10 var2) var2) var2)) (* (- 30) var1)) (* (- 1) var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main16 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* (* (* (* (* 6 var2) var2) var2) var2) var2) (* (* (* (* 15 var2) var2) var2) var2)) (* (* (* 10 var2) var2) var2)) (* (- 30) var1)) (* (- 1) var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main26 var4 var3 var2 var1 var0) (not (= (* var3 var2) (* var2 var2)))))))
(check-sat)
