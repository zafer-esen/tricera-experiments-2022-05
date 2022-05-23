(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main4 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main49 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main50 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main56 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main62 (Int Int Int Int Int Int) Bool)
(declare-fun inv_main68 (Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (and (and (and (<= 0 var5) (<= 0 var4)) (<= 0 var3)) (<= 0 var2)) (and (<= 0 var1) (<= 0 var0)))) (inv_main4 var1 var0 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main50 var5 var4 var3 var2 var1 var0) (= var3 var2))) (inv_main49 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main50 var5 var4 var3 var2 var1 var0) (not (= var3 var2)))) (inv_main56 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main56 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1))))) (inv_main56 var5 var4 (+ var3 (* (- 1) var2)) var2 var1 (+ var0 var1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (inv_main49 var5 var4 var3 var2 var1 var0)) (inv_main68 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main56 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var3 (* (- 1) var2)) (- 1)))))) (inv_main62 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main62 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var2 (* (- 1) var3)) (- 1))))) (inv_main62 var5 var4 var3 (+ var2 (* (- 1) var3)) (+ var1 var0) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int) (var46 Int) (var47 Int) (var48 Int) (var49 Int)) (or (not (and (inv_main4 var49 var48 var47 var46 var45 var44) (and (and (not (= var43 0)) (and (and (and (and (and (and (= var42 var41) (= var40 var39)) (= var38 var37)) (= var36 var35)) (= var34 var33)) (= var32 var31)) (or (and (<= 0 (+ 65535 (* (- 1) var39))) (= var43 1)) (and (not (<= 0 (+ 65535 (* (- 1) var39)))) (= var43 0))))) (and (and (not (= var30 0)) (and (and (and (and (and (and (= var41 var29) (= var39 var28)) (= var37 var27)) (= var35 var26)) (= var33 var25)) (= var31 var24)) (or (and (<= 0 (+ 65535 (* (- 1) var29))) (= var30 1)) (and (not (<= 0 (+ 65535 (* (- 1) var29)))) (= var30 0))))) (and (and (not (= var23 0)) (and (and (and (and (and (and (= var29 var22) (= var28 var21)) (= var27 var20)) (= var26 var19)) (= var25 var18)) (= var24 var17)) (or (and (<= 0 (+ var21 (- 1))) (= var23 1)) (and (not (<= 0 (+ var21 (- 1)))) (= var23 0))))) (and (and (not (= var16 0)) (and (and (and (and (and (and (= var22 var15) (= var21 var14)) (= var20 var13)) (= var19 var12)) (= var18 var11)) (= var17 var10)) (or (and (<= 0 (+ var15 (- 1))) (= var16 1)) (and (not (<= 0 (+ var15 (- 1)))) (= var16 0))))) (and (and (not (= var9 0)) (and (and (and (and (and (and (= var15 var8) (= var14 var7)) (= var13 var6)) (= var12 var5)) (= var11 var4)) (= var10 var3)) (or (and (and (<= 0 var7) (<= 0 (+ 20 (* (- 1) var7)))) (= var9 1)) (and (not (and (<= 0 var7) (<= 0 (+ 20 (* (- 1) var7))))) (= var9 0))))) (and (<= 0 var7) (and (and (not (= var2 0)) (and (and (and (and (and (and (= var8 var1) (= var0 var48)) (= var6 var47)) (= var5 var46)) (= var4 var45)) (= var3 var44)) (or (and (and (<= 0 var1) (<= 0 (+ 20 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 20 (* (- 1) var1))))) (= var2 0))))) (<= 0 var1)))))))))) (inv_main50 var42 var40 var42 var40 var40 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (or (not (and (inv_main62 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var2 (* (- 1) var3)) (- 1)))))) (inv_main50 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main50 var5 var4 var3 var2 var1 var0) (not (= (+ (* var3 var1) (* var2 var0)) (* var5 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main56 var5 var4 var3 var2 var1 var0) (not (= (+ (* var3 var1) (* var2 var0)) (* var5 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main62 var5 var4 var3 var2 var1 var0) (not (= (+ (* var3 var1) (* var2 var0)) (* var5 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main49 var5 var4 var3 var2 var1 var0) (not (= (+ (* var1 var2) (* var0 var2)) (* var5 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int)) (not (and (inv_main68 var5 var4 var3 var2 var1 var0) (not (= var3 var2))))))
(check-sat)
