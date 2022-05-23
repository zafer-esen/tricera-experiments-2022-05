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
(declare-fun inv_main14 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main15 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main19 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main21 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main24 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main26 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main29 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main31 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main34 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main36 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main40 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main8 (Heap AddrRange AddrRange AddrRange AddrRange AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap) (var14 AddrRange) (var15 AddrRange) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 AddrRange) (var20 AddrRange) (var21 Int) (var22 Heap) (var23 AddrRange) (var24 Int) (var25 Heap) (var26 Heap)) (or (not (and (and (and (and (and (= var26 emptyHeap) (and (= var25 (newBatchHeap (batchAlloc emptyHeap (O_Int var24) 100000))) (= var23 (newAddrRange (batchAlloc emptyHeap (O_Int var24) 100000))))) (and (and (= var22 (newBatchHeap (batchAlloc emptyHeap (O_Int var21) 100000))) (= var20 var23)) (= var19 (newAddrRange (batchAlloc emptyHeap (O_Int var21) 100000))))) (and (and (and (= var18 (newBatchHeap (batchAlloc emptyHeap (O_Int var17) 100000))) (= var16 var20)) (= var15 var19)) (= var14 (newAddrRange (batchAlloc emptyHeap (O_Int var17) 100000))))) (and (and (and (and (= var13 (newBatchHeap (batchAlloc emptyHeap (O_Int var12) 100000))) (= var11 var16)) (= var10 var15)) (= var9 var14)) (= var8 (newAddrRange (batchAlloc emptyHeap (O_Int var12) 100000))))) (and (and (and (and (and (= var7 (newBatchHeap (batchAlloc emptyHeap (O_Int var6) 100000))) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var6) 100000)))))) (inv_main8 var7 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 (nthAddrRange var3 var0))))) (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main36 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1))) (and (and (is-O_Int (read var16 (nthAddrRange var11 var9))) (is-O_Int (read var16 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main34 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main31 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1)))) (and (and (is-O_Int (read var16 (nthAddrRange var11 var9))) (is-O_Int (read var16 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main34 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main14 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_Int (read var14 (nthAddrRange var13 var8))) (is-O_Int (read var14 (nthAddrRange var13 var8)))) (and (and (and (and (and (and (= var7 (write var14 (nthAddrRange var13 var8) (O_Int var6))) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main15 var7 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (inv_main8 var6 var5 var4 var3 var2 var1 var0)) (inv_main14 var6 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main15 var14 var13 var12 var11 var10 var9 var8) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1))) (and (and (is-O_Int (read var14 (nthAddrRange var10 var8))) (is-O_Int (read var14 (nthAddrRange var10 var8)))) (and (and (and (and (and (and (= var6 (write var14 (nthAddrRange var10 var8) (O_Int var5))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var7 var8)))))) (inv_main14 var6 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main24 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 (nthAddrRange var5 var0))))) (inv_main26 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main31 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1))) (and (and (is-O_Int (read var16 (nthAddrRange var11 var9))) (is-O_Int (read var16 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main29 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main26 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1)))) (and (and (is-O_Int (read var16 (nthAddrRange var13 var9))) (is-O_Int (read var16 (nthAddrRange var13 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var13 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main29 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 (nthAddrRange var4 var0))))) (inv_main31 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main21 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1))) (and (and (is-O_Int (read var16 (nthAddrRange var14 var9))) (is-O_Int (read var16 (nthAddrRange var14 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var14 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main19 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main15 var14 var13 var12 var11 var10 var9 var8) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1)))) (and (and (is-O_Int (read var14 (nthAddrRange var10 var8))) (is-O_Int (read var14 (nthAddrRange var10 var8)))) (and (and (and (and (and (and (= var6 (write var14 (nthAddrRange var10 var8) (O_Int var5))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var7 var8)))))) (inv_main19 var6 var4 var3 var2 var1 var0 (+ var7 1) 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main19 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 (nthAddrRange var6 var0))))) (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 (nthAddrRange var6 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main26 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1))) (and (and (is-O_Int (read var16 (nthAddrRange var13 var9))) (is-O_Int (read var16 (nthAddrRange var13 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var13 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main24 var6 var5 var4 var3 var2 var1 var0 (+ var7 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main21 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1)))) (and (and (is-O_Int (read var16 (nthAddrRange var14 var9))) (is-O_Int (read var16 (nthAddrRange var14 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var14 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main24 var6 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (is-O_Int (read var8 (nthAddrRange var3 var0))))))) (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 AddrRange) (var15 AddrRange) (var16 Heap)) (or (not (and (inv_main36 var16 var15 var14 var13 var12 var11 var10 var9 var8) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var7 1))) (- 1)))) (and (and (is-O_Int (read var16 (nthAddrRange var11 var9))) (is-O_Int (read var16 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 var9) (O_Int var8))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)))))) (inv_main40 var6 var5 var4 var3 var2 var1 var0 (+ var7 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (is-O_Int (read var6 (nthAddrRange var5 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main15 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main15 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main15 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var2 var0))) (not (is-O_Int (read var6 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main19 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main19 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var0))) (not (within var6 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var6 var1))) (not (within var6 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var6 var1))) (not (is-O_Int (read var8 (nthAddrRange var6 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main24 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main24 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var1))) (not (within var5 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var1))) (not (is-O_Int (read var8 (nthAddrRange var5 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var4 var0))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main31 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main31 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main31 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var3 var1))) (not (is-O_Int (read var8 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var3 var1))) (not (is-O_Int (read var8 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var7 (nthAddrRange var7 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (not (within var7 (nthAddrRange var7 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (not (is-O_Int (read var8 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (is-O_Int (read var8 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var8 (nthAddrRange var7 var0))) (is-O_Int (read var8 (nthAddrRange var3 var0)))) (not (= (getInt (read var8 (nthAddrRange var7 var0))) (getInt (read var8 (nthAddrRange var3 var0))))))))))
(check-sat)