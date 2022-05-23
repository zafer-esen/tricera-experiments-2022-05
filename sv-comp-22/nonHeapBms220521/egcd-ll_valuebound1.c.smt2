(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main39 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main40 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main53 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main54 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main55 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (inv_main4 var7 var6 var5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0) (= var7 var6))) (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main55 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main53 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main53 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int)) (or (not (and (inv_main4 var45 var44 var43 var42 var41 var40 var39 var38) (and (and (not (= var37 0)) (and (and (and (and (and (and (and (and (= var36 var35) (= var34 var33)) (= var32 var31)) (= var30 var29)) (= var28 var27)) (= var26 var25)) (= var24 var23)) (= var22 var21)) (or (and (<= 0 (+ var21 (- 1))) (= var37 1)) (and (not (<= 0 (+ var21 (- 1)))) (= var37 0))))) (and (and (not (= var20 0)) (and (and (and (and (and (and (and (and (= var35 var19) (= var33 var18)) (= var31 var17)) (= var29 var16)) (= var27 var15)) (= var25 var14)) (= var23 var13)) (= var21 var12)) (or (and (<= 0 (+ var13 (- 1))) (= var20 1)) (and (not (<= 0 (+ var13 (- 1)))) (= var20 0))))) (and (and (not (= var11 0)) (and (and (and (and (and (and (and (and (= var19 var10) (= var18 var9)) (= var17 var8)) (= var16 var7)) (= var15 var6)) (= var14 var5)) (= var13 var4)) (= var12 var3)) (or (and (and (<= 0 var3) (<= 0 (+ 1 (* (- 1) var3)))) (= var11 1)) (and (not (and (<= 0 var3) (<= 0 (+ 1 (* (- 1) var3))))) (= var11 0))))) (and (not (= var2 0)) (and (and (and (and (and (and (and (and (= var10 var45) (= var9 var44)) (= var8 var43)) (= var7 var42)) (= var6 var41)) (= var5 var40)) (= var4 var1)) (= var0 var38)) (or (and (and (<= 0 var1) (<= 0 (+ 1 (* (- 1) var1)))) (= var2 1)) (and (not (and (<= 0 var1) (<= 0 (+ 1 (* (- 1) var1))))) (= var2 0)))))))))) (inv_main40 var24 var22 1 0 0 1 var24 var22))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var7 (* (- 1) var6)) (- 1))) (not (= var7 var6))))) (inv_main40 (+ var7 (* (- 1) var6)) var6 (+ var5 (* (- 1) var4)) var4 (+ var3 (* (- 1) var2)) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var7 (* (- 1) var6)) (- 1)))) (not (= var7 var6))))) (inv_main40 var7 (+ var6 (* (- 1) var7)) var5 (+ var4 (* (- 1) var5)) var3 (+ var2 (* (- 1) var3)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (not (= 1 (+ (* var5 var2) (* (- 1) (* var3 var4)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var7 (+ (* var0 var3) (* var1 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var6 (+ (* var1 var4) (* var0 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main39 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ var7 (* (- 1) var6)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main53 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (* var5 var1) (* var3 var0)) (* (- 1) var6)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (* var4 var3) (* (- 1) (* var5 var2))) 1) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main55 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (* var4 var1) (* var2 var0)) (* (- 1) var6)) 0))))))
(check-sat)
