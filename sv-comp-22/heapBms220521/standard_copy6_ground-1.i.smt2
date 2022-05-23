(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (defObj)
  )
))
(declare-fun inv_main10 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main16 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main17 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main21 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main23 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main26 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main28 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main31 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main33 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main36 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main38 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main41 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main43 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main46 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main48 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main52 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Int) (var17 Heap) (var18 AddrRange) (var19 AddrRange) (var20 AddrRange) (var21 AddrRange) (var22 AddrRange) (var23 Int) (var24 Heap) (var25 AddrRange) (var26 AddrRange) (var27 AddrRange) (var28 AddrRange) (var29 Int) (var30 Heap) (var31 AddrRange) (var32 AddrRange) (var33 AddrRange) (var34 Int) (var35 Heap) (var36 AddrRange) (var37 AddrRange) (var38 Int) (var39 Heap) (var40 AddrRange) (var41 Int) (var42 Heap) (var43 Heap)) (or (not (and (and (and (and (and (and (and (= var43 emptyHeap) (and (= var42 (newBatchHeap (batchAlloc emptyHeap (O_Int var41) 100000))) (= var40 (newAddrRange (batchAlloc emptyHeap (O_Int var41) 100000))))) (and (and (= var39 (newBatchHeap (batchAlloc emptyHeap (O_Int var38) 100000))) (= var37 var40)) (= var36 (newAddrRange (batchAlloc emptyHeap (O_Int var38) 100000))))) (and (and (and (= var35 (newBatchHeap (batchAlloc emptyHeap (O_Int var34) 100000))) (= var33 var37)) (= var32 var36)) (= var31 (newAddrRange (batchAlloc emptyHeap (O_Int var34) 100000))))) (and (and (and (and (= var30 (newBatchHeap (batchAlloc emptyHeap (O_Int var29) 100000))) (= var28 var33)) (= var27 var32)) (= var26 var31)) (= var25 (newAddrRange (batchAlloc emptyHeap (O_Int var29) 100000))))) (and (and (and (and (and (= var24 (newBatchHeap (batchAlloc emptyHeap (O_Int var23) 100000))) (= var22 var28)) (= var21 var27)) (= var20 var26)) (= var19 var25)) (= var18 (newAddrRange (batchAlloc emptyHeap (O_Int var23) 100000))))) (and (and (and (and (and (and (= var17 (newBatchHeap (batchAlloc emptyHeap (O_Int var16) 100000))) (= var15 var22)) (= var14 var21)) (= var13 var20)) (= var12 var19)) (= var11 var18)) (= var10 (newAddrRange (batchAlloc emptyHeap (O_Int var16) 100000))))) (and (and (and (and (and (and (and (= var9 (newBatchHeap (batchAlloc emptyHeap (O_Int var8) 100000))) (= var7 var15)) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var8) 100000)))))) (inv_main10 var9 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main23 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var20 (nthAddrRange var18 var11))) (is-O_Int (read var20 (nthAddrRange var18 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var18 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 Heap)) (or (not (and (inv_main17 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var18 (nthAddrRange var12 var10))) (is-O_Int (read var18 (nthAddrRange var12 var10)))) (and (and (and (and (and (and (and (and (= var8 (write var18 (nthAddrRange var12 var10) (O_Int var7))) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 var11)) (= var9 var10)))))) (inv_main21 var8 var6 var5 var4 var3 var2 var1 var0 (+ var9 1) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (and (is-O_Int (read var10 (nthAddrRange var9 var0))) (is-O_Int (read var10 (nthAddrRange var3 var0))))))) (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main48 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var13 var11))) (is-O_Int (read var20 (nthAddrRange var13 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var13 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main52 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var7 var0))))) (inv_main28 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main41 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var4 var0))))) (inv_main43 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 Heap)) (or (not (and (inv_main16 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (is-O_Int (read var18 (nthAddrRange var17 var10))) (is-O_Int (read var18 (nthAddrRange var17 var10)))) (and (and (and (and (and (and (and (and (= var9 (write var18 (nthAddrRange var17 var10) (O_Int var8))) (= var7 var17)) (= var6 var16)) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10))))) (inv_main17 var9 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var6 var0))))) (inv_main33 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var6 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main46 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var3 var0))))) (inv_main48 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main28 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var20 (nthAddrRange var17 var11))) (is-O_Int (read var20 (nthAddrRange var17 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var17 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main23 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var18 var11))) (is-O_Int (read var20 (nthAddrRange var18 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var18 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main36 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var5 var0))))) (inv_main38 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main43 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var20 (nthAddrRange var13 var11))) (is-O_Int (read var20 (nthAddrRange var13 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var13 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main38 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var15 var11))) (is-O_Int (read var20 (nthAddrRange var15 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var15 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main33 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var20 (nthAddrRange var16 var11))) (is-O_Int (read var20 (nthAddrRange var16 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var16 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main31 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main28 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var17 var11))) (is-O_Int (read var20 (nthAddrRange var17 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var17 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main31 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main38 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var20 (nthAddrRange var15 var11))) (is-O_Int (read var20 (nthAddrRange var15 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var15 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main33 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var16 var11))) (is-O_Int (read var20 (nthAddrRange var16 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var16 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (or (not (and (inv_main21 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var9 (nthAddrRange var8 var0))))) (inv_main23 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var9 (nthAddrRange var8 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (or (not (inv_main10 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 Heap)) (or (not (and (inv_main17 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var18 (nthAddrRange var12 var10))) (is-O_Int (read var18 (nthAddrRange var12 var10)))) (and (and (and (and (and (and (and (and (= var8 (write var18 (nthAddrRange var12 var10) (O_Int var7))) (= var6 var17)) (= var5 var16)) (= var4 var15)) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var0 var11)) (= var9 var10)))))) (inv_main16 var8 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main48 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1))) (and (and (is-O_Int (read var20 (nthAddrRange var13 var11))) (is-O_Int (read var20 (nthAddrRange var13 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var13 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main46 var8 var7 var6 var5 var4 var3 var2 var1 var0 (+ var9 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 AddrRange) (var18 AddrRange) (var19 AddrRange) (var20 Heap)) (or (not (and (inv_main43 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var9 1))) (- 1)))) (and (and (is-O_Int (read var20 (nthAddrRange var13 var11))) (is-O_Int (read var20 (nthAddrRange var13 var11)))) (and (and (and (and (and (and (and (and (and (= var8 (write var20 (nthAddrRange var13 var11) (O_Int var10))) (= var7 var19)) (= var6 var18)) (= var5 var17)) (= var4 var16)) (= var3 var15)) (= var2 var14)) (= var1 var13)) (= var0 var12)) (= var9 var11)))))) (inv_main46 var8 var7 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (not (within var7 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (not (is-O_Int (read var8 (nthAddrRange var7 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main17 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main17 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main17 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var2 var0))) (not (is-O_Int (read var8 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main21 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var8 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main21 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var8 var0))) (not (within var8 (nthAddrRange var8 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main23 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var8 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main23 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var8 var1))) (not (within var8 (nthAddrRange var8 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main23 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var8 var1))) (not (is-O_Int (read var10 (nthAddrRange var8 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var7 var0))) (not (within var7 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var7 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var7 var1))) (not (within var7 (nthAddrRange var7 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main28 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var7 var1))) (not (is-O_Int (read var10 (nthAddrRange var7 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var0))) (not (within var6 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main33 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main33 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var6 var1))) (not (within var6 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main33 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var6 var1))) (not (is-O_Int (read var10 (nthAddrRange var6 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main36 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main36 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main38 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main38 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var5 var1))) (not (within var5 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main38 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var5 var1))) (not (is-O_Int (read var10 (nthAddrRange var5 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main41 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main41 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var4 var0))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main43 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main43 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main43 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var3 var1))) (not (is-O_Int (read var10 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main46 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap)) (not (and (inv_main46 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main48 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var3 var1))) (not (is-O_Int (read var10 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var9 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var9 (nthAddrRange var9 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var9 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var9 var0))) (not (within var9 (nthAddrRange var9 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var9 var0))) (not (is-O_Int (read var10 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var10 (nthAddrRange var9 var0))) (is-O_Int (read var10 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (not (and (inv_main52 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var10 (nthAddrRange var9 var0))) (is-O_Int (read var10 (nthAddrRange var3 var0)))) (not (= (getInt (read var10 (nthAddrRange var9 var0))) (getInt (read var10 (nthAddrRange var3 var0))))))))))
(check-sat)
