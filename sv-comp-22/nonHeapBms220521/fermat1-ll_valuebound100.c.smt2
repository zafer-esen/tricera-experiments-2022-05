(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main36 (Int Int Int Int Int) Bool)
(declare-fun inv_main37 (Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int) Bool)
(declare-fun inv_main43 (Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (inv_main4 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main37 var4 var3 var2 var1 var0) (= var0 0))) (inv_main36 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int)) (or (not (and (inv_main4 var35 var34 var33 var32 var31) (and (and (and (not (= var30 0)) (and (and (and (and (and (= var29 var28) (= var27 var26)) (= var25 var24)) (= var23 var22)) (= var21 var20)) (or (and (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var36)) (- 1))) (<= 0 (+ (+ 2 (* 1 var36)) (- 1)))) (or (not (<= 0 (+ var36 (- 1)))) (<= 0 (+ var28 (- 1))))) (or (not (<= 0 (+ (* (- 1) var36) (- 1)))) (<= 0 (+ (* (- 1) var28) (- 1))))) (= var28 (+ (* 2 var37) var36))) (= var36 1)) (= var30 1)) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var38)) (- 1))) (<= 0 (+ (+ 2 (* 1 var38)) (- 1)))) (or (not (<= 0 (+ var38 (- 1)))) (<= 0 (+ var28 (- 1))))) (or (not (<= 0 (+ (* (- 1) var38) (- 1)))) (<= 0 (+ (* (- 1) var28) (- 1))))) (= var28 (+ (* 2 var39) var38)))) (= var38 1))) (= var30 0))))) (and (and (not (= var19 0)) (and (and (and (and (and (= var28 var18) (= var26 var17)) (= var24 var16)) (= var22 var15)) (= var20 var14)) (or (and (<= 0 (+ (+ var18 (* (- 1) (* (+ var17 (- 1)) (+ var17 (- 1))))) (- 1))) (= var19 1)) (and (not (<= 0 (+ (+ var18 (* (- 1) (* (+ var17 (- 1)) (+ var17 (- 1))))) (- 1)))) (= var19 0))))) (and (and (not (= var13 0)) (and (and (and (and (and (= var18 var12) (= var17 var11)) (= var16 var10)) (= var15 var9)) (= var14 var8)) (or (and (and (<= 0 var11) (<= 0 (+ 100 (* (- 1) var11)))) (= var13 1)) (and (not (and (<= 0 var11) (<= 0 (+ 100 (* (- 1) var11))))) (= var13 0))))) (and (not (= var7 0)) (and (and (and (and (and (= var12 var6) (= var5 var34)) (= var10 var33)) (= var9 var32)) (= var8 var31)) (or (and (and (<= 0 var6) (<= 0 (+ 100 (* (- 1) var6)))) (= var7 1)) (and (not (and (<= 0 var6) (<= 0 (+ 100 (* (- 1) var6))))) (= var7 0)))))))) (and (and (and (and (= var4 var29) (= var3 var27)) (= var2 (+ (* 2 var27) 1))) (= var1 1)) (= var0 (+ (* var27 var27) (* (- 1) var29))))))) (inv_main37 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main49 var4 var3 var2 var1 var0) (not (<= 0 (+ (* (- 1) var0) (- 1)))))) (inv_main37 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main43 var4 var3 var2 var1 var0) (not (<= 0 (+ var0 (- 1)))))) (inv_main49 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main49 var4 var3 var2 var1 var0) (<= 0 (+ (* (- 1) var0) (- 1))))) (inv_main49 var4 var3 (+ var2 2) var1 (+ var0 var2)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main37 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main43 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (or (not (and (inv_main43 var4 var3 var2 var1 var0) (<= 0 (+ var0 (- 1))))) (inv_main43 var4 var3 var2 (+ var1 2) (+ var0 (* (- 1) var1))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main37 var4 var3 var2 var1 var0) (not (= (* 4 (+ var4 var0)) (+ (+ (+ (* var2 var2) (* (- 1) (* var1 var1))) (* (- 2) var2)) (* 2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main43 var4 var3 var2 var1 var0) (not (= (* 4 (+ var4 var0)) (+ (+ (+ (* var2 var2) (* (- 1) (* var1 var1))) (* (- 2) var2)) (* 2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main49 var4 var3 var2 var1 var0) (not (= (* 4 (+ var4 var0)) (+ (+ (+ (* var2 var2) (* (- 1) (* var1 var1))) (* (- 2) var2)) (* 2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int)) (not (and (inv_main36 var4 var3 var2 var1 var0) (not (= (* 4 var4) (+ (+ (+ (* var2 var2) (* (- 1) (* var1 var1))) (* (- 2) var2)) (* 2 var1))))))))
(check-sat)
