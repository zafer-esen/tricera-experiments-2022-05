(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main17 (Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Int Int Int Int Int) Bool)
(declare-fun inv_main19 (Int Int Int Int Int) Bool)
(declare-fun inv_main20 (Int Int Int Int Int) Bool)
(declare-fun inv_main21 (Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Int Int Int Int Int) Bool)
(declare-fun inv_main30 (Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Int Int Int Int Int) Bool)
(declare-fun inv_main32 (Int Int Int Int Int) Bool)
(declare-fun inv_main33 (Int Int Int Int Int) Bool)
(declare-fun inv_main34 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (inv_main4 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main17 var4 var3 var2 var1 var0)) (inv_main30 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main21 var4 var3 var2 var1 var0)) (inv_main22 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main18 var4 var3 var2 var1 var0)) (inv_main19 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main33 var4 var3 var2 var1 var0)) (inv_main34 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main31 var4 var3 var2 var1 var0)) (inv_main32 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main22 var4 var3 var2 var1 var0) (not (<= 0 (+ var4 (* (- 1) var3)))))) (inv_main17 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main20 var4 var3 var2 var1 var0)) (inv_main21 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main19 var4 var3 var2 var1 var0)) (inv_main20 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main4 var11 var10 var9 var8 var7) (and (not (= var6 0)) (and (and (and (and (and (= var5 var4) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (or (and (and (<= 0 var4) (<= 0 (+ 50 (* (- 1) var4)))) (= var6 1)) (and (not (and (<= 0 var4) (<= 0 (+ 50 (* (- 1) var4))))) (= var6 0))))))) (inv_main18 var5 0 0 1 6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main22 var4 var3 var2 var1 var0) (<= 0 (+ var4 (* (- 1) var3))))) (inv_main18 var4 (+ var3 1) (+ var2 var1) (+ var1 var0) (+ var0 6)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main30 var4 var3 var2 var1 var0)) (inv_main31 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (inv_main32 var4 var3 var2 var1 var0)) (inv_main33 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main18 var4 var3 var2 var1 var0) (not (= var0 (+ (* 6 var3) 6)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (= var1 (+ (+ (* (* 3 var3) var3) (* 3 var3)) 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (= var2 (* (* var3 var3) var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main21 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* var1 var0) (* (- 18) var2)) (* (- 12) var1)) (* 2 var0)) (- 6)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main22 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var0 var0) (* (- 12) var1)) (* (- 6) var0)) 12) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main17 var4 var3 var2 var1 var0) (not (= var0 (+ (* 6 var3) 6)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main30 var4 var3 var2 var1 var0) (not (= (+ (+ (* (* 6 var4) var2) (* (- 1) (* var2 var0))) (* 12 var2)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main31 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* var4 var0) (* (- 6) var4)) (* (- 2) var1)) (* 2 var0)) (- 10)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main32 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* (* 2 var1) var1) (* (- 1) (* (* 3 var2) var0))) (* (- 18) var2)) (* (- 10) var1)) (* 3 var0)) (- 10)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main33 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var0 var0) (* (- 12) var1)) (* (- 6) var0)) 12) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main34 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* var1 var0) (* (- 18) var2)) (* (- 12) var1)) (* 2 var0)) (- 6)) 0))))))
(check-sat)
