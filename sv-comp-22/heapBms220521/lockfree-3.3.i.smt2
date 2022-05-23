(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (cell 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O_cell (getcell cell))
   (defObj)
  )
  (
   (cell (data Int) (next Addr))
  )
))
(declare-fun inv_main0 (Heap Addr Int Int Addr Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main18 (Heap Addr Int Int Addr Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main2 (Heap Addr Int Int Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main20 (Heap Addr Int Int Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main22 (Heap Addr Int Int Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main24 (Heap Addr Int Int Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main31 (Heap Addr Int Int Addr Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main46 (Heap Addr Int Int Addr Addr Addr Addr Addr Int Int) Bool)
(declare-fun inv_main55 (Heap Addr Int Int Addr Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main64 (Heap Addr Int Int Addr Addr Addr Addr Addr Int) Bool)
(declare-fun inv_main68 (Heap Addr Int Int Addr Addr Addr Addr Addr Int Addr) Bool)
(declare-fun inv_main74 (Heap Addr Int Int Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main9 (Heap Addr Int Int Addr Addr Addr Addr Addr Int) Bool)
(assert (inv_main2 emptyHeap (cell 0 nullAddr) 1 1 nullAddr nullAddr (cell 0 nullAddr) nullAddr nullAddr))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Addr) (var11 Heap)) (or (not (and (inv_main9 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2) (and (= var1 0) (not (= var2 0))))) (inv_main46 var11 var10 var9 var8 var7 var6 var5 var4 var3 var0 var8))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 cell) (var10 Heap) (var11 Int) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Addr) (var20 Heap)) (or (not (and (inv_main18 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (and (and (and (and (and (and (and (and (and (= var10 (newHeap (alloc var20 (O_cell var9)))) (= var8 var19)) (= var7 (+ var11 1))) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 (newAddr (alloc var20 (O_cell var9))))) (= var11 1)))) (inv_main20 var10 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main20 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_cell (read var8 var3)) (is-O_cell (read var8 var3))))) (inv_main22 (write var8 var3 (O_cell (cell 0 (next (getcell (read var8 var3)))))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 2))) (inv_main24 var9 var8 (+ var0 1) var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 3))) (inv_main55 var10 var9 var8 (+ var0 1) var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main9 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var0 0)) (not (= var1 0))))) (inv_main18 var10 var9 var8 var7 var6 var5 var4 var3 var2 var8))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main2 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var7 nullAddr)))) (inv_main9 var8 var7 var6 var5 var4 var3 var2 var1 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap) (var9 Int) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Addr) (var18 Heap)) (or (not (and (inv_main2 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (= var9 0)) (and (= var17 nullAddr) (and (and (and (and (and (and (and (and (and (= var8 var18) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (or (and (not (= 1 var16)) (= var9 1)) (and (= 1 var16) (= var9 0)))))))) (inv_main9 var8 var7 var6 var5 var4 var3 var2 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap) (var10 Int) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Addr) (var19 Heap)) (or (not (and (inv_main2 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (= var10 0) (and (= var18 nullAddr) (and (and (and (and (and (and (and (and (and (= var9 var19) (= var8 var18)) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (or (and (not (= 1 var17)) (= var10 1)) (and (= 1 var17) (= var10 0)))))))) (inv_main9 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap) (var11 Int) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Addr) (var20 Heap)) (or (not (and (inv_main64 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (is-O_cell (read var20 var13)) (and (and (and (and (and (and (and (and (and (and (= var10 var20) (= var9 var19)) (= var8 var18)) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 (data (getcell (read var20 var13)))))))) (inv_main68 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 1))) (inv_main2 var10 var9 var8 (+ var0 1) var6 var5 var4 var9 var2))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap) (var11 Int) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Addr) (var20 Heap)) (or (not (and (inv_main55 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (and (is-O_cell (read var20 var13)) (and (and (and (and (and (and (and (and (and (and (= var10 var20) (= var9 var19)) (= var8 var18)) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 (next (getcell (read var20 var13)))))))) (inv_main2 var10 var9 var8 var7 var6 var5 var4 var3 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap) (var10 Addr) (var11 Int) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Addr) (var20 Heap)) (or (not (and (inv_main68 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (is-O_cell (read var20 var13)) (is-O_cell (read var20 var13))) (and (and (and (and (and (and (and (and (and (= var9 (write var20 var13 (O_cell (cell (data (getcell (read var20 var13))) var10)))) (= var8 var19)) (= var7 var18)) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 var11))))) (inv_main2 var9 var8 var7 1 var5 var4 var2 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var3 nullAddr) (= var0 2)))) (inv_main2 var10 var9 var8 1 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var3 nullAddr)) (= var0 2)))) (inv_main2 var10 var9 var8 (+ var0 1) var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var9 var3) (= var0 4)))) (inv_main2 var10 var2 var8 (+ var0 1) var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var9 var3)) (= var0 4)))) (inv_main2 var10 var9 var8 1 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Heap)) (or (not (and (inv_main22 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_cell (read var17 var12)) (is-O_cell (read var17 var12))) (and (and (and (and (and (and (and (and (= var8 (write var17 var12 (O_cell (cell (data (getcell (read var17 var12))) nullAddr)))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main2 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Heap)) (or (not (and (inv_main24 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_cell (read var17 var12)) (is-O_cell (read var17 var12))) (and (and (and (and (and (and (and (and (= var8 (write var17 var12 (O_cell (cell 4 (next (getcell (read var17 var12))))))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main2 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 3))) (inv_main2 var9 var8 (+ var0 1) var6 var8 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Addr) (var18 Heap)) (or (not (and (inv_main31 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_cell (read var18 var13)) (is-O_cell (read var18 var13))) (and (and (and (and (and (and (and (and (= var8 (write var18 var13 (O_cell (cell (data (getcell (read var18 var13))) var9)))) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10))))) (inv_main2 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 6))) (inv_main2 var9 var8 1 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (= var8 var5) (= var0 5)))) (inv_main2 var9 var4 (+ var0 1) var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var8 var5)) (= var0 5)))) (inv_main2 var9 var8 3 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main9 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var3 nullAddr)) (= var0 0)))) (inv_main74 var9 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Addr) (var18 Heap) (var19 Addr) (var20 Addr) (var21 Addr) (var22 Addr) (var23 Addr) (var24 Addr) (var25 Int) (var26 Int) (var27 Addr) (var28 Heap)) (or (not (and (inv_main74 var28 var27 var26 var25 var24 var23 var22 var21 var20) (and (not (= var19 nullAddr)) (and (and (is-O_cell (read var28 var22)) (and (and (and (and (and (and (and (and (and (= var18 var28) (= var17 var27)) (= var16 var26)) (= var15 var25)) (= var14 var24)) (= var13 var23)) (= var12 var22)) (= var11 var21)) (= var10 var20)) (= var9 (next (getcell (read var28 var22)))))) (and (and (and (and (and (and (and (and (and (= var8 (write var18 var12 defObj)) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var19 var9)))))) (inv_main74 var8 var7 var6 var5 var4 var3 var19 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (or (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 5))) (inv_main64 var10 var9 var8 (+ var0 1) var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Heap) (var18 Addr) (var19 Addr) (var20 Addr) (var21 Addr) (var22 Addr) (var23 Int) (var24 Int) (var25 Addr) (var26 Heap) (var27 Addr) (var28 Addr) (var29 Addr) (var30 Addr) (var31 Addr) (var32 Int) (var33 Int) (var34 Addr) (var35 Heap) (var36 Int) (var37 Addr) (var38 Addr) (var39 Addr) (var40 Addr) (var41 Addr) (var42 Addr) (var43 Addr) (var44 Addr) (var45 Addr) (var46 Addr) (var47 Int) (var48 Int) (var49 Int) (var50 Int) (var51 Addr) (var52 Addr) (var53 Heap) (var54 Heap) (var55 Int) (var56 Addr) (var57 Addr) (var58 Addr) (var59 Addr) (var60 Addr) (var61 Int) (var62 Int) (var63 Addr) (var64 Heap)) (or (not (and (inv_main9 var64 var63 var62 var61 var60 var59 var58 var57 var56 var55) (and (and (and (and (and (and (and (and (and (and (and (and (= var54 var53) (= var52 var51)) (= var50 var49)) (= var48 var47)) (= var46 var45)) (= var44 var43)) (= var42 var41)) (= var40 var39)) (= var38 var37)) (or (and (not (= var41 nullAddr)) (= var36 1)) (and (= var41 nullAddr) (= var36 0)))) (and (and (and (and (= var58 nullAddr) (and (and (and (and (and (and (and (and (= var35 var64) (= var34 nullAddr)) (= var33 var62)) (= var32 var61)) (= var31 var60)) (= var30 var59)) (= var29 var58)) (= var28 var57)) (= var27 var56))) (and (and (and (and (and (and (and (and (= var26 var35) (= var25 var34)) (= var24 var33)) (= var23 var32)) (= var22 nullAddr)) (= var21 var30)) (= var20 var29)) (= var19 var28)) (= var18 var27))) (and (and (and (and (and (and (and (and (= var17 var26) (= var16 var25)) (= var15 var24)) (= var14 var23)) (= var13 var22)) (= var12 nullAddr)) (= var11 var20)) (= var10 var19)) (= var9 var18))) (and (and (and (and (and (and (and (and (= var8 var17) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 nullAddr)) (= var0 var9)))) (and (and (and (and (and (and (and (and (= var53 var8) (= var51 var7)) (= var49 var6)) (= var47 var5)) (= var45 var4)) (= var43 var3)) (= var41 var2)) (= var39 var1)) (= var37 nullAddr))) (= var55 0)))) (inv_main0 var54 var52 var50 var48 var46 var44 var42 var40 var38 var36))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Addr) (var11 Heap) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Addr) (var20 Heap) (var21 Addr) (var22 Addr) (var23 Addr) (var24 Addr) (var25 Addr) (var26 Int) (var27 Int) (var28 Addr) (var29 Heap) (var30 Addr) (var31 Addr) (var32 Addr) (var33 Addr) (var34 Addr) (var35 Int) (var36 Int) (var37 Addr) (var38 Heap) (var39 Addr) (var40 Addr) (var41 Addr) (var42 Addr) (var43 Addr) (var44 Addr) (var45 Addr) (var46 Addr) (var47 Addr) (var48 Int) (var49 Int) (var50 Int) (var51 Int) (var52 Addr) (var53 Heap) (var54 Heap) (var55 Addr) (var56 Int) (var57 Addr) (var58 Addr) (var59 Addr) (var60 Addr) (var61 Addr) (var62 Addr) (var63 Addr) (var64 Addr) (var65 Addr) (var66 Addr) (var67 Int) (var68 Int) (var69 Int) (var70 Int) (var71 Addr) (var72 Addr) (var73 Heap) (var74 Heap) (var75 Addr) (var76 Addr) (var77 Addr) (var78 Addr) (var79 Addr) (var80 Int) (var81 Int) (var82 Addr) (var83 Heap)) (or (not (and (inv_main74 var83 var82 var81 var80 var79 var78 var77 var76 var75) (and (and (and (and (and (and (and (and (and (and (and (and (= var74 var73) (= var72 var71)) (= var70 var69)) (= var68 var67)) (= var66 var65)) (= var64 var63)) (= var62 var61)) (= var60 var59)) (= var58 var57)) (or (and (not (= var61 nullAddr)) (= var56 1)) (and (= var61 nullAddr) (= var56 0)))) (and (and (and (and (= var55 nullAddr) (and (and (and (and (and (and (and (and (= var54 var53) (= var52 nullAddr)) (= var51 var50)) (= var49 var48)) (= var47 var46)) (= var45 var44)) (= var43 var55)) (= var42 var41)) (= var40 var39))) (and (and (and (and (and (and (and (and (= var38 var54) (= var37 var52)) (= var36 var51)) (= var35 var49)) (= var34 nullAddr)) (= var33 var45)) (= var32 var43)) (= var31 var42)) (= var30 var40))) (and (and (and (and (and (and (and (and (= var29 var38) (= var28 var37)) (= var27 var36)) (= var26 var35)) (= var25 var34)) (= var24 nullAddr)) (= var23 var32)) (= var22 var31)) (= var21 var30))) (and (and (and (and (and (and (and (and (= var20 var29) (= var19 var28)) (= var18 var27)) (= var17 var26)) (= var16 var25)) (= var15 var24)) (= var14 var23)) (= var13 nullAddr)) (= var12 var21)))) (and (and (and (and (and (and (and (and (= var73 var20) (= var71 var19)) (= var69 var18)) (= var67 var17)) (= var65 var16)) (= var63 var15)) (= var61 var14)) (= var59 var13)) (= var57 nullAddr))) (and (and (is-O_cell (read var83 var77)) (and (and (and (and (and (and (and (and (and (= var11 var83) (= var10 var82)) (= var9 var81)) (= var8 var80)) (= var7 var79)) (= var6 var78)) (= var5 var77)) (= var4 var76)) (= var3 var75)) (= var2 (next (getcell (read var83 var77)))))) (and (and (and (and (and (and (and (and (and (= var53 (write var11 var5 defObj)) (= var1 var10)) (= var50 var9)) (= var48 var8)) (= var46 var7)) (= var44 var6)) (= var0 var5)) (= var41 var4)) (= var39 var3)) (= var55 var2)))))) (inv_main0 var74 var72 var70 var68 var66 var64 var62 var60 var58 var56))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 4))) (inv_main31 var9 var8 (+ var0 1) var6 var5 var4 var3 var2 var1 var5))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main20 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var8 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main20 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_cell (read var8 var3)) (not (is-O_cell (read var8 var3))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main22 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var8 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main22 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_cell (read var8 var3)) (not (is-O_cell (read var8 var3))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var8 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main24 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_cell (read var8 var3)) (not (is-O_cell (read var8 var3))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var9 var4)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_cell (read var9 var4)) (not (is-O_cell (read var9 var4))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (and (and (not (= var0 1)) (not (= var0 2))) (not (= var0 3))) (not (= var0 4))) (not (= var0 5))) (not (= var0 6)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main55 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var9 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main64 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var9 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (not (and (inv_main68 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var10 var3)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (not (and (inv_main68 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_cell (read var10 var3)) (not (is-O_cell (read var10 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (not (and (inv_main46 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (and (not (= var0 1)) (not (= var0 2))) (not (= var0 3))) (not (= var0 4))) (not (= var0 5)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main74 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_cell (read var8 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Addr) (var10 Heap)) (not (and (inv_main0 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1) (not (= (read var10 var0) defObj))))))
(check-sat)
