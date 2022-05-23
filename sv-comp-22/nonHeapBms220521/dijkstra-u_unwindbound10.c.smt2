(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main15 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main16 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main24 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main28 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main29 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main30 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main43 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (and (and (and (<= 0 var4) (<= 0 var3)) (<= 0 var2)) (<= 0 var1)) (<= 0 var0))) (inv_main3 0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main42 var5 var4 var3 var2 var1 var0)) (inv_main43 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main30 var5 var4 var3 var2 var1 var0)) (inv_main31 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main28 var5 var4 var3 var2 var1 var0)) (inv_main29 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main29 var5 var4 var3 var2 var1 var0)) (inv_main30 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1)))))) (inv_main16 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var4 (* (- 1) var2)))) (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1)))))) (inv_main16 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int)) (or (not (and (inv_main31 var17 var16 var15 var14 var13 var12) (and (and (not (<= 0 (+ var11 (* (- 1) var10)))) (and (not (= var14 1)) (and (and (and (and (and (= var9 var17) (= var8 var16)) (= var7 var15)) (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var14 (* (- 4) var18)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var14 (* (- 4) var18)))) (- 1)))) (or (not (<= 0 (+ (+ var14 (* (- 4) var18)) (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var14 (* (- 4) var18))) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var6 var18))) (= var5 var13)) (= var4 var12)))) (and (and (and (and (and (= var3 var9) (= var2 var8)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var7 (* (- 2) var19)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var7 (* (- 2) var19)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 2) var19)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 2) var19))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1))))) (= var1 var19))) (= var0 var6)) (= var11 var5)) (= var10 (+ var7 var6)))))) (inv_main16 var3 var2 var1 var0 var11 var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int)) (or (not (and (inv_main31 var17 var16 var15 var14 var13 var12) (and (and (<= 0 (+ var11 (* (- 1) var10))) (and (not (= var14 1)) (and (and (and (and (and (= var9 var17) (= var8 var16)) (= var7 var15)) (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var14 (* (- 4) var18)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var14 (* (- 4) var18)))) (- 1)))) (or (not (<= 0 (+ (+ var14 (* (- 4) var18)) (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var14 (* (- 4) var18))) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var6 var18))) (= var5 var13)) (= var4 var12)))) (and (and (and (and (and (= var3 var9) (= var2 var8)) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ var7 (* (- 2) var19)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ var7 (* (- 2) var19)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 2) var19)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 2) var19))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1))))) (= var1 var19))) (= var0 var6)) (= var11 var5)) (= var10 (+ var7 var6)))))) (inv_main16 var3 var2 (+ var1 var0) var0 (+ var11 (* (- 1) var10)) var10))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1))))) (inv_main24 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main27 var5 var4 var3 var2 var1 var0)) (inv_main28 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main23 var5 var4 var3 var2 var1 var0)) (inv_main42 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1)))))) (inv_main23 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (= var2 1))) (inv_main23 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main24 var5 var4 var3 var2 var1 var0)) (inv_main27 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int)) (or (not (and (inv_main3 var13 var12 var11 var10 var9 var8) (and (and (not (= var7 0)) (and (and (and (and (and (and (= var6 var13) (= var5 var4)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (or (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ 4294967295 (* (- 4) var14)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ 4294967295 (* (- 4) var14)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 4294967295 (* (- 4) var14))) (- 1))))) (<= 0 (+ (+ var14 (* (- 1) var4)) (- 1)))) (= var7 1)) (and (not (or (not (and (and (<= 0 (+ (+ 4 (* (- 1) (+ 4294967295 (* (- 4) var15)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ 4294967295 (* (- 4) var15)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 4294967295 (* (- 4) var15))) (- 1)))))) (<= 0 (+ (+ var15 (* (- 1) var4)) (- 1))))) (= var7 0))))) (<= 0 var4)))) (inv_main15 var6 var5 0 1 var5 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var4 (* (- 1) var2))) (<= 0 (+ (+ 10 (* (- 1) var5)) (- 1)))))) (inv_main15 (+ var5 1) var4 var3 (* 4 var2) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (+ (* 2 var3) var2) (* (- 1) var1)) (- 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main27 var5 var4 var3 var2 var1 var0) (not (= (+ (* var3 var3) (* var1 var2)) (* var4 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main28 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (+ (* (* var0 var0) var0) (* (- 1) (* (* (* 12 var0) var4) var2))) (* (* (* 16 var4) var3) var2)) (* (- 1) (* (* var0 var2) var2))) (* (- 1) (* (* (* 4 var3) var2) var2))) (* (* (* 12 var0) var2) var1)) (* (- 1) (* (* (* 16 var3) var2) var1))) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main29 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (+ (+ (+ (* (* var0 var0) var4) (* (- 1) (* (* (* 4 var0) var4) var3))) (* (* 4 (* var4 var4)) var2)) (* (- 1) (* (* var4 var2) var2))) (* (- 1) (* (* var0 var0) var1))) (* (* (* 4 var0) var3) var1)) (* (- 1) (* (* (* 8 var4) var2) var1))) (* (* var2 var2) var1)) (* (* (* 4 var2) var1) var1)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main30 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* (* var0 var0) var3) (* (- 1) (* (* (* 4 var0) var4) var2))) (* (* (* 4 var4) var3) var2)) (* (- 1) (* (* var3 var2) var2))) (* (* (* 4 var0) var2) var1)) (* (- 1) (* (* (* 4 var3) var2) var1))) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (* var3 var3) (* (- 1) (* var4 var2))) (* var2 var1)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main23 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (+ (* (* var0 var0) var0) (* (- 1) (* (* 12 var0) var4))) (* (* 16 var4) var3)) (* (* 12 var0) var1)) (* (- 1) (* (* 16 var3) var1))) (* (- 1) var0)) (* (- 4) var3)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main42 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (* var3 var3) (* (- 1) var4)) var1) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main43 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* (* var0 var0) var3) (* (- 1) (* (* 4 var0) var4))) (* (* 4 var4) var3)) (* (* 4 var0) var1)) (* (- 1) (* (* 4 var3) var1))) (* (- 1) var3)) 0))))))
(check-sat)
