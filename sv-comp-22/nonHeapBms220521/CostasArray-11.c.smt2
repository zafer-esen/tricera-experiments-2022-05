(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-fun inv_main6 (Int Int Int Int) Bool)
(declare-fun inv_main645 (Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int)) (inv_main6 var2 0 var1 var0)))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int) (var46 Int) (var47 Int) (var48 Int) (var49 Int) (var50 Int) (var51 Int) (var52 Int) (var53 Int) (var54 Int) (var55 Int) (var56 Int) (var57 Int) (var58 Int) (var59 Int) (var60 Int) (var61 Int) (var62 Int) (var63 Int) (var64 Int) (var65 Int) (var66 Int)) (or (not (and (inv_main6 var66 var65 var64 var63) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (not (= (+ var62 (* (- 1) var61)) (+ var60 (* (- 1) var59)))) (and (= (+ var58 (* (- 1) var59)) var57) (and (= (+ var60 (* (- 1) var61)) var56) (and (= (+ var62 (* (- 1) var55)) var54) (and (= (+ var53 (* (- 1) var59)) var52) (and (= (+ var58 (* (- 1) var61)) var51) (and (= (+ var60 (* (- 1) var55)) var50) (and (= (+ var62 (* (- 1) var49)) var48) (and (= (+ var47 (* (- 1) var59)) var46) (and (= (+ var53 (* (- 1) var61)) var45) (and (= (+ var58 (* (- 1) var55)) var44) (and (= (+ var60 (* (- 1) var49)) var43) (and (= (+ var62 (* (- 1) var42)) var41) (and (= (+ var40 (* (- 1) var59)) var39) (and (= (+ var47 (* (- 1) var61)) var38) (and (= (+ var53 (* (- 1) var55)) var37) (and (= (+ var58 (* (- 1) var49)) var36) (and (= (+ var60 (* (- 1) var42)) var35) (and (= (+ var62 (* (- 1) var40)) var34) (and (= (+ var42 (* (- 1) var59)) var33) (and (= (+ var40 (* (- 1) var61)) var32) (and (= (+ var47 (* (- 1) var55)) var31) (and (= (+ var53 (* (- 1) var49)) var30) (and (= (+ var58 (* (- 1) var42)) var29) (and (= (+ var60 (* (- 1) var40)) var28) (and (= (+ var62 (* (- 1) var47)) var27) (and (= (+ var49 (* (- 1) var59)) var26) (and (= (+ var42 (* (- 1) var61)) var25) (and (= (+ var40 (* (- 1) var55)) var24) (and (= (+ var47 (* (- 1) var49)) var23) (and (= (+ var53 (* (- 1) var42)) var22) (and (= (+ var58 (* (- 1) var40)) var21) (and (= (+ var60 (* (- 1) var47)) var20) (and (= (+ var62 (* (- 1) var53)) var19) (and (= (+ var55 (* (- 1) var59)) var18) (and (= (+ var49 (* (- 1) var61)) var17) (and (= (+ var42 (* (- 1) var55)) var16) (and (= (+ var40 (* (- 1) var49)) var15) (and (= (+ var47 (* (- 1) var42)) var14) (and (= (+ var53 (* (- 1) var40)) var13) (and (= (+ var58 (* (- 1) var47)) var12) (and (= (+ var60 (* (- 1) var53)) var11) (and (= (+ var62 (* (- 1) var58)) var10) (and (= (+ var61 (* (- 1) var59)) var9) (and (= (+ var55 (* (- 1) var61)) var8) (and (= (+ var49 (* (- 1) var55)) var7) (and (= (+ var42 (* (- 1) var49)) var6) (and (= (+ var40 (* (- 1) var42)) var5) (and (= (+ var47 (* (- 1) var40)) var4) (and (= (+ var53 (* (- 1) var47)) var3) (and (= (+ var58 (* (- 1) var53)) var2) (and (= (+ var60 (* (- 1) var58)) var1) (and (= (+ var62 (* (- 1) var60)) var0) (and (not (= var56 var57)) (and (not (= var54 var57)) (and (not (= var54 var56)) (and (not (= var51 var52)) (and (not (= var50 var52)) (and (not (= var50 var51)) (and (not (= var48 var52)) (and (not (= var48 var51)) (and (not (= var48 var50)) (and (not (= var45 var46)) (and (not (= var44 var46)) (and (not (= var44 var45)) (and (not (= var43 var46)) (and (not (= var43 var45)) (and (not (= var43 var44)) (and (not (= var41 var46)) (and (not (= var41 var45)) (and (not (= var41 var44)) (and (not (= var41 var43)) (and (not (= var38 var39)) (and (not (= var37 var39)) (and (not (= var37 var38)) (and (not (= var36 var39)) (and (not (= var36 var38)) (and (not (= var36 var37)) (and (not (= var35 var39)) (and (not (= var35 var38)) (and (not (= var35 var37)) (and (not (= var35 var36)) (and (not (= var34 var39)) (and (not (= var34 var38)) (and (not (= var34 var37)) (and (not (= var34 var36)) (and (not (= var34 var35)) (and (not (= var32 var33)) (and (not (= var31 var33)) (and (not (= var31 var32)) (and (not (= var30 var33)) (and (not (= var30 var32)) (and (not (= var30 var31)) (and (not (= var29 var33)) (and (not (= var29 var32)) (and (not (= var29 var31)) (and (not (= var29 var30)) (and (not (= var28 var33)) (and (not (= var28 var32)) (and (not (= var28 var31)) (and (not (= var28 var30)) (and (not (= var28 var29)) (and (not (= var27 var33)) (and (not (= var27 var32)) (and (not (= var27 var31)) (and (not (= var27 var30)) (and (not (= var27 var29)) (and (not (= var27 var28)) (and (not (= var25 var26)) (and (not (= var24 var26)) (and (not (= var24 var25)) (and (not (= var23 var26)) (and (not (= var23 var25)) (and (not (= var23 var24)) (and (not (= var22 var26)) (and (not (= var22 var25)) (and (not (= var22 var24)) (and (not (= var22 var23)) (and (not (= var21 var26)) (and (not (= var21 var25)) (and (not (= var21 var24)) (and (not (= var21 var23)) (and (not (= var21 var22)) (and (not (= var20 var26)) (and (not (= var20 var25)) (and (not (= var20 var24)) (and (not (= var20 var23)) (and (not (= var20 var22)) (and (not (= var20 var21)) (and (not (= var19 var26)) (and (not (= var19 var25)) (and (not (= var19 var24)) (and (not (= var19 var23)) (and (not (= var19 var22)) (and (not (= var19 var21)) (and (not (= var19 var20)) (and (not (= var17 var18)) (and (not (= var16 var18)) (and (not (= var16 var17)) (and (not (= var15 var18)) (and (not (= var15 var17)) (and (not (= var15 var16)) (and (not (= var14 var18)) (and (not (= var14 var17)) (and (not (= var14 var16)) (and (not (= var14 var15)) (and (not (= var13 var18)) (and (not (= var13 var17)) (and (not (= var13 var16)) (and (not (= var13 var15)) (and (not (= var13 var14)) (and (not (= var12 var18)) (and (not (= var12 var17)) (and (not (= var12 var16)) (and (not (= var12 var15)) (and (not (= var12 var14)) (and (not (= var12 var13)) (and (not (= var11 var18)) (and (not (= var11 var17)) (and (not (= var11 var16)) (and (not (= var11 var15)) (and (not (= var11 var14)) (and (not (= var11 var13)) (and (not (= var11 var12)) (and (not (= var10 var18)) (and (not (= var10 var17)) (and (not (= var10 var16)) (and (not (= var10 var15)) (and (not (= var10 var14)) (and (not (= var10 var13)) (and (not (= var10 var12)) (and (not (= var10 var11)) (and (not (= var8 var9)) (and (not (= var7 var9)) (and (not (= var7 var8)) (and (not (= var6 var9)) (and (not (= var6 var8)) (and (not (= var6 var7)) (and (not (= var5 var9)) (and (not (= var5 var8)) (and (not (= var5 var7)) (and (not (= var5 var6)) (and (not (= var4 var9)) (and (not (= var4 var8)) (and (not (= var4 var7)) (and (not (= var4 var6)) (and (not (= var4 var5)) (and (not (= var3 var9)) (and (not (= var3 var8)) (and (not (= var3 var7)) (and (not (= var3 var6)) (and (not (= var3 var5)) (and (not (= var3 var4)) (and (not (= var2 var9)) (and (not (= var2 var8)) (and (not (= var2 var7)) (and (not (= var2 var6)) (and (not (= var2 var5)) (and (not (= var2 var4)) (and (not (= var2 var3)) (and (not (= var1 var9)) (and (not (= var1 var8)) (and (not (= var1 var7)) (and (not (= var1 var6)) (and (not (= var1 var5)) (and (not (= var1 var4)) (and (not (= var1 var3)) (and (not (= var1 var2)) (and (not (= var0 var9)) (and (not (= var0 var8)) (and (not (= var0 var7)) (and (not (= var0 var6)) (and (not (= var0 var5)) (and (not (= var0 var4)) (and (not (= var0 var3)) (and (not (= var0 var2)) (and (not (= var0 var1)) (and (not (= var61 var59)) (and (not (= var55 var59)) (and (not (= var55 var61)) (and (not (= var49 var59)) (and (not (= var49 var61)) (and (not (= var49 var55)) (and (not (= var42 var59)) (and (not (= var42 var61)) (and (not (= var42 var55)) (and (not (= var42 var49)) (and (not (= var40 var59)) (and (not (= var40 var61)) (and (not (= var40 var55)) (and (not (= var40 var49)) (and (not (= var40 var42)) (and (not (= var47 var59)) (and (not (= var47 var61)) (and (not (= var47 var55)) (and (not (= var47 var49)) (and (not (= var47 var42)) (and (not (= var47 var40)) (and (not (= var53 var59)) (and (not (= var53 var61)) (and (not (= var53 var55)) (and (not (= var53 var49)) (and (not (= var53 var42)) (and (not (= var53 var40)) (and (not (= var53 var47)) (and (not (= var58 var59)) (and (not (= var58 var61)) (and (not (= var58 var55)) (and (not (= var58 var49)) (and (not (= var58 var42)) (and (not (= var58 var40)) (and (not (= var58 var47)) (and (not (= var58 var53)) (and (not (= var60 var59)) (and (not (= var60 var61)) (and (not (= var60 var55)) (and (not (= var60 var49)) (and (not (= var60 var42)) (and (not (= var60 var40)) (and (not (= var60 var47)) (and (not (= var60 var53)) (and (not (= var60 var58)) (and (not (= var62 var59)) (and (not (= var62 var61)) (and (not (= var62 var55)) (and (not (= var62 var49)) (and (not (= var62 var42)) (and (not (= var62 var40)) (and (not (= var62 var47)) (and (not (= var62 var53)) (and (not (= var62 var58)) (not (= var62 var60))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (and (not (= var57 0)) (and (<= 0 (+ 10 (* (- 1) var57))) (<= 0 (+ var57 10))))) (and (not (= var56 0)) (and (<= 0 (+ 10 (* (- 1) var56))) (<= 0 (+ var56 10))))) (and (not (= var54 0)) (and (<= 0 (+ 10 (* (- 1) var54))) (<= 0 (+ var54 10))))) (and (not (= var52 0)) (and (<= 0 (+ 10 (* (- 1) var52))) (<= 0 (+ var52 10))))) (and (not (= var51 0)) (and (<= 0 (+ 10 (* (- 1) var51))) (<= 0 (+ var51 10))))) (and (not (= var50 0)) (and (<= 0 (+ 10 (* (- 1) var50))) (<= 0 (+ var50 10))))) (and (not (= var48 0)) (and (<= 0 (+ 10 (* (- 1) var48))) (<= 0 (+ var48 10))))) (and (not (= var46 0)) (and (<= 0 (+ 10 (* (- 1) var46))) (<= 0 (+ var46 10))))) (and (not (= var45 0)) (and (<= 0 (+ 10 (* (- 1) var45))) (<= 0 (+ var45 10))))) (and (not (= var44 0)) (and (<= 0 (+ 10 (* (- 1) var44))) (<= 0 (+ var44 10))))) (and (not (= var43 0)) (and (<= 0 (+ 10 (* (- 1) var43))) (<= 0 (+ var43 10))))) (and (not (= var41 0)) (and (<= 0 (+ 10 (* (- 1) var41))) (<= 0 (+ var41 10))))) (and (not (= var39 0)) (and (<= 0 (+ 10 (* (- 1) var39))) (<= 0 (+ var39 10))))) (and (not (= var38 0)) (and (<= 0 (+ 10 (* (- 1) var38))) (<= 0 (+ var38 10))))) (and (not (= var37 0)) (and (<= 0 (+ 10 (* (- 1) var37))) (<= 0 (+ var37 10))))) (and (not (= var36 0)) (and (<= 0 (+ 10 (* (- 1) var36))) (<= 0 (+ var36 10))))) (and (not (= var35 0)) (and (<= 0 (+ 10 (* (- 1) var35))) (<= 0 (+ var35 10))))) (and (not (= var34 0)) (and (<= 0 (+ 10 (* (- 1) var34))) (<= 0 (+ var34 10))))) (and (not (= var33 0)) (and (<= 0 (+ 10 (* (- 1) var33))) (<= 0 (+ var33 10))))) (and (not (= var32 0)) (and (<= 0 (+ 10 (* (- 1) var32))) (<= 0 (+ var32 10))))) (and (not (= var31 0)) (and (<= 0 (+ 10 (* (- 1) var31))) (<= 0 (+ var31 10))))) (and (not (= var30 0)) (and (<= 0 (+ 10 (* (- 1) var30))) (<= 0 (+ var30 10))))) (and (not (= var29 0)) (and (<= 0 (+ 10 (* (- 1) var29))) (<= 0 (+ var29 10))))) (and (not (= var28 0)) (and (<= 0 (+ 10 (* (- 1) var28))) (<= 0 (+ var28 10))))) (and (not (= var27 0)) (and (<= 0 (+ 10 (* (- 1) var27))) (<= 0 (+ var27 10))))) (and (not (= var26 0)) (and (<= 0 (+ 10 (* (- 1) var26))) (<= 0 (+ var26 10))))) (and (not (= var25 0)) (and (<= 0 (+ 10 (* (- 1) var25))) (<= 0 (+ var25 10))))) (and (not (= var24 0)) (and (<= 0 (+ 10 (* (- 1) var24))) (<= 0 (+ var24 10))))) (and (not (= var23 0)) (and (<= 0 (+ 10 (* (- 1) var23))) (<= 0 (+ var23 10))))) (and (not (= var22 0)) (and (<= 0 (+ 10 (* (- 1) var22))) (<= 0 (+ var22 10))))) (and (not (= var21 0)) (and (<= 0 (+ 10 (* (- 1) var21))) (<= 0 (+ var21 10))))) (and (not (= var20 0)) (and (<= 0 (+ 10 (* (- 1) var20))) (<= 0 (+ var20 10))))) (and (not (= var19 0)) (and (<= 0 (+ 10 (* (- 1) var19))) (<= 0 (+ var19 10))))) (and (not (= var18 0)) (and (<= 0 (+ 10 (* (- 1) var18))) (<= 0 (+ var18 10))))) (and (not (= var17 0)) (and (<= 0 (+ 10 (* (- 1) var17))) (<= 0 (+ var17 10))))) (and (not (= var16 0)) (and (<= 0 (+ 10 (* (- 1) var16))) (<= 0 (+ var16 10))))) (and (not (= var15 0)) (and (<= 0 (+ 10 (* (- 1) var15))) (<= 0 (+ var15 10))))) (and (not (= var14 0)) (and (<= 0 (+ 10 (* (- 1) var14))) (<= 0 (+ var14 10))))) (and (not (= var13 0)) (and (<= 0 (+ 10 (* (- 1) var13))) (<= 0 (+ var13 10))))) (and (not (= var12 0)) (and (<= 0 (+ 10 (* (- 1) var12))) (<= 0 (+ var12 10))))) (and (not (= var11 0)) (and (<= 0 (+ 10 (* (- 1) var11))) (<= 0 (+ var11 10))))) (and (not (= var10 0)) (and (<= 0 (+ 10 (* (- 1) var10))) (<= 0 (+ var10 10))))) (and (not (= var9 0)) (and (<= 0 (+ 10 (* (- 1) var9))) (<= 0 (+ var9 10))))) (and (not (= var8 0)) (and (<= 0 (+ 10 (* (- 1) var8))) (<= 0 (+ var8 10))))) (and (not (= var7 0)) (and (<= 0 (+ 10 (* (- 1) var7))) (<= 0 (+ var7 10))))) (and (not (= var6 0)) (and (<= 0 (+ 10 (* (- 1) var6))) (<= 0 (+ var6 10))))) (and (not (= var5 0)) (and (<= 0 (+ 10 (* (- 1) var5))) (<= 0 (+ var5 10))))) (and (not (= var4 0)) (and (<= 0 (+ 10 (* (- 1) var4))) (<= 0 (+ var4 10))))) (and (not (= var3 0)) (and (<= 0 (+ 10 (* (- 1) var3))) (<= 0 (+ var3 10))))) (and (not (= var2 0)) (and (<= 0 (+ 10 (* (- 1) var2))) (<= 0 (+ var2 10))))) (and (not (= var1 0)) (and (<= 0 (+ 10 (* (- 1) var1))) (<= 0 (+ var1 10))))) (and (not (= var0 0)) (and (<= 0 (+ 10 (* (- 1) var0))) (<= 0 (+ var0 10))))) (and (<= 0 (+ 11 (* (- 1) var59))) (<= 0 (+ var59 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var61))) (<= 0 (+ var61 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var55))) (<= 0 (+ var55 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var49))) (<= 0 (+ var49 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var42))) (<= 0 (+ var42 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var40))) (<= 0 (+ var40 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var47))) (<= 0 (+ var47 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var53))) (<= 0 (+ var53 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var58))) (<= 0 (+ var58 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var60))) (<= 0 (+ var60 (- 1))))) (and (<= 0 (+ 11 (* (- 1) var62))) (<= 0 (+ var62 (- 1))))))) (inv_main645 var66 var65 var64 var62 var60 var58 var53 var47 var40 var42 var49 var55 var61 var59 var0 var1 var2 var3 var4 var5 var6 var7 var8 var9 var10 var11 var12 var13 var14 var15 var16 var17 var18 var19 var20 var21 var22 var23 var24 var25 var26 var27 var28 var29 var30 var31 var32 var33 var34 var35 var36 var37 var38 var39 var41 var43 var44 var45 var46 var48 var50 var51 var52 var54 var56 var57 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int) (var32 Int) (var33 Int) (var34 Int) (var35 Int) (var36 Int) (var37 Int) (var38 Int) (var39 Int) (var40 Int) (var41 Int) (var42 Int) (var43 Int) (var44 Int) (var45 Int) (var46 Int) (var47 Int) (var48 Int) (var49 Int) (var50 Int) (var51 Int) (var52 Int) (var53 Int) (var54 Int) (var55 Int) (var56 Int) (var57 Int) (var58 Int) (var59 Int) (var60 Int) (var61 Int) (var62 Int) (var63 Int) (var64 Int) (var65 Int) (var66 Int)) (not (inv_main645 var66 var65 var64 var63 var62 var61 var60 var59 var58 var57 var56 var55 var54 var53 var52 var51 var50 var49 var48 var47 var46 var45 var44 var43 var42 var41 var40 var39 var38 var37 var36 var35 var34 var33 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
