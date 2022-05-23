(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-fun inv_main4 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main55 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main63 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main64 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main65 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main66 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main80 (Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (inv_main4 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_main55 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main80 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int) (var46 Int) (var47 Int) (var48 Int) (var49 Int) (var50 Int) (var51 Int) (var52 Int) (var53 Int) (var54 Int) (var55 Int) (var56 Int) (var57 Int) (var58 Int) (var59 Int) (var60 Int) (var61 Int) (var62 Int) (var63 Int) (var64 Int) (var65 Int) (var66 Int) (var67 Int) (var68 Int) (var69 Int) (var70 Int) (var71 Int) (var72 Int) (var73 Int) (var74 Int) (var75 Int) (var76 Int) (var77 Int) (var78 Int) (var79 Int) (var80 Int) (var81 Int) (var82 Int) (var83 Int) (var84 Int) (var85 Int) (var86 Int) (var87 Int) (var88 Int) (var89 Int) (var90 Int) (var91 Int) (var92 Int) (var93 Int) (var94 Int) (var95 Int) (var96 Int) (var97 Int) (var98 Int) (var99 Int) (var100 Int) (var101 Int) (var102 Int) (var103 Int) (var104 Int) (var105 Int) (var106 Int) (var107 Int) (var108 Int) (var109 Int) (var110 Int) (var111 Int) (var112 Int) (var113 Int) (var114 Int) (var115 Int)) (or (not (and (inv_main4 var115 var114 var113 var112 var111 var110 var109 var108 var107 var106 var105 var104) (and (= var103 0) (and (and (not (= var102 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var101 var100) (= var99 var98)) (= var97 var96)) (= var103 var95)) (= var94 var93)) (= var92 var91)) (= var90 var89)) (= var88 var87)) (= var86 var85)) (= var84 var83)) (= var82 var81)) (= var80 var79)) (or (and (<= 0 (+ (+ 2147483647 (* (- 1) var79)) (- 1))) (= var102 1)) (and (not (<= 0 (+ (+ 2147483647 (* (- 1) var79)) (- 1)))) (= var102 0))))) (and (and (and (not (= var78 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var100 var77) (= var98 var76)) (= var96 var75)) (= var95 var74)) (= var93 var73)) (= var91 var72)) (= var89 var71)) (= var87 var70)) (= var85 var69)) (= var83 var68)) (= var81 var67)) (= var79 var66)) (or (and (<= 0 (+ (+ 2147483647 (* (- 1) var67)) (- 1))) (= var78 1)) (and (not (<= 0 (+ (+ 2147483647 (* (- 1) var67)) (- 1)))) (= var78 0))))) (and (and (and (not (= var65 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var64 var63) (= var62 var61)) (= var60 var59)) (= var58 var57)) (= var56 var55)) (= var54 var53)) (= var52 var51)) (= var50 var49)) (= var48 var47)) (= var46 var45)) (= var44 var43)) (= var42 var41)) (or (and (<= 0 (+ var61 (- 1))) (= var65 1)) (and (not (<= 0 (+ var61 (- 1)))) (= var65 0))))) (and (and (not (= var40 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var63 var39) (= var61 var38)) (= var59 var37)) (= var57 var36)) (= var55 var35)) (= var53 var34)) (= var51 var33)) (= var49 var32)) (= var47 var31)) (= var45 var30)) (= var43 var29)) (= var41 var28)) (or (and (<= 0 (+ var39 (- 1))) (= var40 1)) (and (not (<= 0 (+ var39 (- 1)))) (= var40 0))))) (and (and (not (= var27 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var39 var26) (= var38 var25)) (= var37 var24)) (= var36 var23)) (= var35 var22)) (= var34 var21)) (= var33 var20)) (= var32 var19)) (= var31 var18)) (= var30 var17)) (= var29 var16)) (= var28 var15)) (or (and (and (<= 0 var25) (<= 0 (+ 50 (* (- 1) var25)))) (= var27 1)) (and (not (and (<= 0 var25) (<= 0 (+ 50 (* (- 1) var25))))) (= var27 0))))) (and (not (= var14 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var26 var13) (= var12 var114)) (= var24 var113)) (= var23 var112)) (= var22 var111)) (= var21 var110)) (= var20 var109)) (= var19 var108)) (= var18 var107)) (= var17 var106)) (= var16 var105)) (= var15 var104)) (or (and (and (<= 0 var13) (<= 0 (+ 50 (* (- 1) var13)))) (= var14 1)) (and (not (and (<= 0 var13) (<= 0 (+ 50 (* (- 1) var13))))) (= var14 0)))))))) (and (and (and (and (and (and (and (and (and (and (and (= var11 var64) (= var10 var62)) (= var9 var64)) (= var8 var62)) (= var7 1)) (= var6 0)) (= var5 0)) (= var4 1)) (= var3 0)) (= var2 0)) (= var1 (* var64 var62))) (= var0 var42)))) (and (and (and (and (and (and (and (and (and (and (and (= var77 var11) (= var76 var10)) (= var75 var9)) (= var74 var8)) (= var73 var7)) (= var72 var6)) (= var71 var5)) (= var70 var4)) (= var69 var3)) (= var68 var2)) (= var67 var1)) (= var66 (* var10 var10)))))))) (inv_main55 var101 var99 var97 var103 var94 var92 var90 var88 var86 var84 var82 var80))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main66 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (= var24 0) (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var36) (= var22 var35)) (= var21 var33)) (= var20 var28)) (= var19 var31)) (= var18 (+ var32 (* (- 1) (* var31 var27))))) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var32)) (not (<= 0 (+ var28 (* (- 1) var33)))))) (and (and (and (and (and (and (and (and (and (and (and (= var10 var23) (= var9 var22)) (= var8 var21)) (= var24 var20)) (= var7 var19)) (= var6 var18)) (= var5 var16)) (= var4 (+ var17 (* (- 1) (* var16 var14))))) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main55 var10 var9 var8 var24 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main65 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (and (inv_main66 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var3 (* (- 1) var8))))) (inv_main63 var11 var10 var9 var8 var7 var6 var5 var4 (+ var3 (* (- 1) var8)) (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int) (var46 Int) (var47 Int) (var48 Int) (var49 Int) (var50 Int) (var51 Int) (var52 Int) (var53 Int) (var54 Int) (var55 Int) (var56 Int) (var57 Int) (var58 Int) (var59 Int) (var60 Int) (var61 Int) (var62 Int) (var63 Int) (var64 Int) (var65 Int) (var66 Int) (var67 Int) (var68 Int) (var69 Int) (var70 Int) (var71 Int) (var72 Int) (var73 Int) (var74 Int) (var75 Int) (var76 Int) (var77 Int) (var78 Int) (var79 Int) (var80 Int) (var81 Int) (var82 Int) (var83 Int) (var84 Int) (var85 Int) (var86 Int) (var87 Int) (var88 Int) (var89 Int) (var90 Int) (var91 Int) (var92 Int) (var93 Int) (var94 Int) (var95 Int) (var96 Int) (var97 Int) (var98 Int) (var99 Int) (var100 Int) (var101 Int) (var102 Int) (var103 Int) (var104 Int) (var105 Int) (var106 Int) (var107 Int) (var108 Int) (var109 Int) (var110 Int) (var111 Int) (var112 Int) (var113 Int) (var114 Int) (var115 Int)) (or (not (and (inv_main4 var115 var114 var113 var112 var111 var110 var109 var108 var107 var106 var105 var104) (and (not (= var103 0)) (and (and (not (= var102 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var101 var100) (= var99 var98)) (= var97 var96)) (= var103 var95)) (= var94 var93)) (= var92 var91)) (= var90 var89)) (= var88 var87)) (= var86 var85)) (= var84 var83)) (= var82 var81)) (= var80 var79)) (or (and (<= 0 (+ (+ 2147483647 (* (- 1) var79)) (- 1))) (= var102 1)) (and (not (<= 0 (+ (+ 2147483647 (* (- 1) var79)) (- 1)))) (= var102 0))))) (and (and (and (not (= var78 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var100 var77) (= var98 var76)) (= var96 var75)) (= var95 var74)) (= var93 var73)) (= var91 var72)) (= var89 var71)) (= var87 var70)) (= var85 var69)) (= var83 var68)) (= var81 var67)) (= var79 var66)) (or (and (<= 0 (+ (+ 2147483647 (* (- 1) var67)) (- 1))) (= var78 1)) (and (not (<= 0 (+ (+ 2147483647 (* (- 1) var67)) (- 1)))) (= var78 0))))) (and (and (and (not (= var65 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var64 var63) (= var62 var61)) (= var60 var59)) (= var58 var57)) (= var56 var55)) (= var54 var53)) (= var52 var51)) (= var50 var49)) (= var48 var47)) (= var46 var45)) (= var44 var43)) (= var42 var41)) (or (and (<= 0 (+ var61 (- 1))) (= var65 1)) (and (not (<= 0 (+ var61 (- 1)))) (= var65 0))))) (and (and (not (= var40 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var63 var39) (= var61 var38)) (= var59 var37)) (= var57 var36)) (= var55 var35)) (= var53 var34)) (= var51 var33)) (= var49 var32)) (= var47 var31)) (= var45 var30)) (= var43 var29)) (= var41 var28)) (or (and (<= 0 (+ var39 (- 1))) (= var40 1)) (and (not (<= 0 (+ var39 (- 1)))) (= var40 0))))) (and (and (not (= var27 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var39 var26) (= var38 var25)) (= var37 var24)) (= var36 var23)) (= var35 var22)) (= var34 var21)) (= var33 var20)) (= var32 var19)) (= var31 var18)) (= var30 var17)) (= var29 var16)) (= var28 var15)) (or (and (and (<= 0 var25) (<= 0 (+ 50 (* (- 1) var25)))) (= var27 1)) (and (not (and (<= 0 var25) (<= 0 (+ 50 (* (- 1) var25))))) (= var27 0))))) (and (not (= var14 0)) (and (and (and (and (and (and (and (and (and (and (and (and (= var26 var13) (= var12 var114)) (= var24 var113)) (= var23 var112)) (= var22 var111)) (= var21 var110)) (= var20 var109)) (= var19 var108)) (= var18 var107)) (= var17 var106)) (= var16 var105)) (= var15 var104)) (or (and (and (<= 0 var13) (<= 0 (+ 50 (* (- 1) var13)))) (= var14 1)) (and (not (and (<= 0 var13) (<= 0 (+ 50 (* (- 1) var13))))) (= var14 0)))))))) (and (and (and (and (and (and (and (and (and (and (and (= var11 var64) (= var10 var62)) (= var9 var64)) (= var8 var62)) (= var7 1)) (= var6 0)) (= var5 0)) (= var4 1)) (= var3 0)) (= var2 0)) (= var1 (* var64 var62))) (= var0 var42)))) (and (and (and (and (and (and (and (and (and (and (and (= var77 var11) (= var76 var10)) (= var75 var9)) (= var74 var8)) (= var73 var7)) (= var72 var6)) (= var71 var5)) (= var70 var4)) (= var69 var3)) (= var68 var2)) (= var67 var1)) (= var66 (* var10 var10)))))))) (inv_main63 var101 var99 var97 var103 var94 var92 var90 var88 var97 0 var82 var80))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int)) (or (not (and (inv_main66 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25) (and (and (not (= var24 0)) (and (and (and (and (and (and (and (and (and (and (and (and (and (= var23 var36) (= var22 var35)) (= var21 var33)) (= var20 var28)) (= var19 var31)) (= var18 (+ var32 (* (- 1) (* var31 var27))))) (= var17 var30)) (= var16 var29)) (= var15 var28)) (= var14 var27)) (= var13 var26)) (= var12 var25)) (= var11 var32)) (not (<= 0 (+ var28 (* (- 1) var33)))))) (and (and (and (and (and (and (and (and (and (and (and (= var10 var23) (= var9 var22)) (= var8 var21)) (= var24 var20)) (= var7 var19)) (= var6 var18)) (= var5 var16)) (= var4 (+ var17 (* (- 1) (* var16 var14))))) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12))))) (inv_main63 var10 var9 var8 var24 var7 var6 var5 var4 var8 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_main63 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (or (not (inv_main65 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main66 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main63 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var9 (+ (* var2 var8) var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var9 (+ (* var10 var5) (* var11 var7))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main65 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var8 (+ (* var11 var6) (* var10 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main66 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (+ (+ (+ (+ (* var6 var1) (* var4 var0)) (* (- 1) (* var6 var11))) (* (- 1) (* var8 var10))) (* (- 1) (* var4 var10))) var8) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main55 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (* var6 var11) (* var4 var10)) 0))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int)) (not (and (inv_main80 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= (+ (* var7 var11) (* var5 var10)) var9))))))
(check-sat)
