(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main41 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main42 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main43 (Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main44 (Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (and (and (and (and (and (<= 0 var7) (<= 0 var6)) (<= 0 var5)) (<= 0 var4)) (<= 0 var3)) (<= 0 var2)) (and (<= 0 var1) (<= 0 var0)))) (inv_main4 var1 var0 var7 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int) (var46 Int) (var47 Int) (var48 Int) (var49 Int) (var50 Int) (var51 Int) (var52 Int) (var53 Int) (var54 Int) (var55 Int) (var56 Int) (var57 Int) (var58 Int) (var59 Int) (var60 Int) (var61 Int) (var62 Int) (var63 Int) (var64 Int) (var65 Int) (var66 Int) (var67 Int) (var68 Int) (var69 Int) (var70 Int) (var71 Int) (var72 Int) (var73 Int) (var74 Int) (var75 Int) (var76 Int) (var77 Int) (var78 Int) (var79 Int) (var80 Int) (var81 Int) (var82 Int) (var83 Int) (var84 Int)) (or (not (and (inv_main4 var70 var69 var68 var67 var66 var65 var64 var63) (and (and (and (and (and (not (= var62 0)) (and (and (and (and (and (and (and (and (= var61 var60) (= var59 var58)) (= var57 var56)) (= var55 var54)) (= var53 var52)) (= var51 var50)) (= var49 var48)) (= var47 var46)) (or (and (<= 0 (+ (+ var58 (- 2)) (- 1))) (= var62 1)) (and (not (<= 0 (+ (+ var58 (- 2)) (- 1)))) (= var62 0))))) (and (and (not (= var45 0)) (and (and (and (and (and (and (and (and (= var60 var44) (= var58 var43)) (= var56 var42)) (= var54 var41)) (= var52 var40)) (= var50 var39)) (= var48 var38)) (= var46 var37)) (or (and (and (and (and (<= 0 (+ (+ 8 (* (- 1) (+ 4294967295 (* (- 8) var71)))) (- 1))) (<= 0 (+ (+ 8 (* 1 (+ 4294967295 (* (- 8) var71)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 4294967295 (* (- 8) var71))) (- 1))))) (<= 0 (+ (+ var71 (* (- 1) var44)) (- 1)))) (= var45 1)) (and (not (or (not (and (and (<= 0 (+ (+ 8 (* (- 1) (+ 4294967295 (* (- 8) var72)))) (- 1))) (<= 0 (+ (+ 8 (* 1 (+ 4294967295 (* (- 8) var72)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 4294967295 (* (- 8) var72))) (- 1)))))) (<= 0 (+ (+ var72 (* (- 1) var44)) (- 1))))) (= var45 0))))) (and (and (not (= var36 0)) (and (and (and (and (and (and (and (and (= var44 var35) (= var43 var34)) (= var42 var33)) (= var41 var32)) (= var40 var31)) (= var39 var30)) (= var38 var29)) (= var37 var28)) (or (and (and (<= 0 var34) (<= 0 (+ 1 (* (- 1) var34)))) (= var36 1)) (and (not (and (<= 0 var34) (<= 0 (+ 1 (* (- 1) var34))))) (= var36 0))))) (and (<= 0 var34) (and (and (not (= var27 0)) (and (and (and (and (and (and (and (and (= var35 var26) (= var25 var69)) (= var33 var68)) (= var32 var67)) (= var31 var66)) (= var30 var65)) (= var29 var64)) (= var28 var63)) (or (and (and (<= 0 var26) (<= 0 (+ 1 (* (- 1) var26)))) (= var27 1)) (and (not (and (<= 0 var26) (<= 0 (+ 1 (* (- 1) var26))))) (= var27 0))))) (<= 0 var26)))))) (and (and (and (and (and (and (and (= var24 var61) (= var23 var59)) (and (and (and (and (and (or (and (<= 0 var59) (<= 0 (+ (+ var59 (* (- 1) var73)) (- 1)))) (and (not (<= 0 var59)) (<= 0 (+ (+ (* (- 1) var59) (* (- 1) var73)) (- 1))))) (or (and (<= 0 var59) (<= 0 (+ (+ var59 (* 1 var73)) (- 1)))) (and (not (<= 0 var59)) (<= 0 (+ (+ (* (- 1) var59) (* 1 var73)) (- 1)))))) (or (not (<= 0 (+ var73 (- 1)))) (<= 0 (+ var61 (- 1))))) (or (not (<= 0 (+ (* (- 1) var73) (- 1)))) (<= 0 (+ (* (- 1) var61) (- 1))))) (= var61 (+ (* var74 var59) var73))) (= var22 var73))) (= var21 var55)) (= var20 var53)) (= var19 var59)) (= var18 var49)) (= var17 var47))) (and (and (and (and (and (and (and (= var16 var24) (= var15 var23)) (= var14 var22)) (and (and (and (and (and (or (and (<= 0 (+ var19 (- 2))) (<= 0 (+ (+ (+ var19 (- 2)) (* (- 1) var75)) (- 1)))) (and (not (<= 0 (+ var19 (- 2)))) (<= 0 (+ (+ (* (- 1) (+ var19 (- 2))) (* (- 1) var75)) (- 1))))) (or (and (<= 0 (+ var19 (- 2))) (<= 0 (+ (+ (+ var19 (- 2)) (* 1 var75)) (- 1)))) (and (not (<= 0 (+ var19 (- 2)))) (<= 0 (+ (+ (* (- 1) (+ var19 (- 2))) (* 1 var75)) (- 1)))))) (or (not (<= 0 (+ var75 (- 1)))) (<= 0 (+ var24 (- 1))))) (or (not (<= 0 (+ (* (- 1) var75) (- 1)))) (<= 0 (+ (* (- 1) var24) (- 1))))) (= var24 (+ (* var76 (+ var19 (- 2))) var75))) (= var13 var75))) (= var12 var20)) (= var11 var19)) (= var10 var18)) (= var9 0))) (and (and (and (and (and (and (and (= var8 var16) (= var7 var15)) (= var6 var14)) (= var5 var13)) (and (and (and (and (and (and (and (= var80 var16) (= var79 (+ var80 (* (- 1) (* var77 var78))))) (= var78 (+ var11 (- 2)))) (or (and (<= 0 var78) (<= 0 (+ (+ var78 (* (- 1) var79)) (- 1)))) (and (not (<= 0 var78)) (<= 0 (+ (+ (* (- 1) var78) (* (- 1) var79)) (- 1)))))) (or (and (<= 0 var78) (<= 0 (+ (+ var78 (* 1 var79)) (- 1)))) (and (not (<= 0 var78)) (<= 0 (+ (+ (* (- 1) var78) (* 1 var79)) (- 1)))))) (or (not (<= 0 (+ var79 (- 1)))) (<= 0 (+ var80 (- 1))))) (or (not (<= 0 (+ (* (- 1) var79) (- 1)))) (<= 0 (+ (* (- 1) var80) (- 1))))) (and (and (and (and (and (and (and (= var84 var16) (= var83 (+ var84 (* (- 1) (* var81 var82))))) (= var82 var11)) (or (and (<= 0 var82) (<= 0 (+ (+ var82 (* (- 1) var83)) (- 1)))) (and (not (<= 0 var82)) (<= 0 (+ (+ (* (- 1) var82) (* (- 1) var83)) (- 1)))))) (or (and (<= 0 var82) (<= 0 (+ (+ var82 (* 1 var83)) (- 1)))) (and (not (<= 0 var82)) (<= 0 (+ (+ (* (- 1) var82) (* 1 var83)) (- 1)))))) (or (not (<= 0 (+ var83 (- 1)))) (<= 0 (+ var84 (- 1))))) (or (not (<= 0 (+ (* (- 1) var83) (- 1)))) (<= 0 (+ (* (- 1) var84) (- 1))))) (= var4 (* 4 (+ var77 (* (- 1) var81))))))) (= var3 var11)) (= var2 var10)) (= var1 var9))))) (inv_main41 var8 var7 var6 var5 var4 var3 var0 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var4 (* (- 1) (+ (* 2 var5) var3))) (- 1))) (and (<= 0 (+ var1 (* (- 1) var2))) (not (= var5 0)))))) (inv_main41 var7 var6 (+ (+ (+ (+ (* 2 var5) (* (- 1) var4)) var3) var2) 2) var5 (+ var3 4) (+ var2 2) var1 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) var4))) (<= 0 (+ (+ (+ (+ var2 var4) 2) (* (- 1) (+ (* 2 var5) var3))) (- 1)))) (and (not (<= 0 (+ (+ var4 (* (- 1) (+ (* 2 var5) var3))) (- 1)))) (and (<= 0 (+ var1 (* (- 1) var2))) (not (= var5 0))))))) (inv_main41 var7 var6 (+ (+ (* 2 var5) (* (- 1) var4)) var3) var5 var3 (+ var2 2) var1 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) var4))) (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) (+ (+ var2 var4) 2))))) (<= 0 (+ (+ (+ (+ (* 2 var2) var4) 4) (* (- 1) (+ (* 2 var5) var3))) (- 1)))) (and (or (not (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) var4)))) (not (<= 0 (+ (+ (+ (+ var2 var4) 2) (* (- 1) (+ (* 2 var5) var3))) (- 1))))) (and (not (<= 0 (+ (+ var4 (* (- 1) (+ (* 2 var5) var3))) (- 1)))) (and (<= 0 (+ var1 (* (- 1) var2))) (not (= var5 0)))))))) (inv_main41 var7 var6 (+ (+ (+ (+ (* 2 var5) (* (- 1) var4)) var3) (* (- 1) var2)) (- 2)) var5 (+ var3 (- 4)) (+ var2 2) var1 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (or (not (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) var4)))) (not (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) (+ (+ var2 var4) 2)))))) (not (<= 0 (+ (+ (+ (+ (* 2 var2) var4) 4) (* (- 1) (+ (* 2 var5) var3))) (- 1))))) (and (or (not (<= 0 (+ (+ (* 2 var5) var3) (* (- 1) var4)))) (not (<= 0 (+ (+ (+ (+ var2 var4) 2) (* (- 1) (+ (* 2 var5) var3))) (- 1))))) (and (not (<= 0 (+ (+ var4 (* (- 1) (+ (* 2 var5) var3))) (- 1)))) (and (<= 0 (+ var1 (* (- 1) var2))) (not (= var5 0)))))))) (inv_main41 var7 var6 (+ (+ (+ (+ (* 2 var5) (* (- 1) var4)) var3) (* (- 2) var2)) (- 4)) var5 (+ var3 (- 8)) (+ var2 2) var1 var5))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main43 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (or (not (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main43 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (* (* var2 var2) var3) (* (- 1) (* (* 2 var3) var2))) (* (- 1) (* (* 4 var5) var2))) (* (* 4 var4) var2)) (* 8 var5)) (* 8 var7)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main42 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (* var4 var0) (* var0 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main43 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (+ (+ (* (* var2 var2) var3) (* (- 1) (* (* 2 var2) var3))) (* (- 1) (* (* 4 var2) var5))) (* (* 4 var2) var0)) (* (* 4 var6) var4)) (* (- 1) (* (* 4 var6) var0))) (* (- 8) var7)) (* 8 var5)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int)) (not (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (* var2 var4) (* (- 1) (* var2 var0))) (* (- 1) (* var6 var4))) (* var6 var0)) 0))))))
(check-sat)
