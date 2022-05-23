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
(declare-fun inv_main13 (Heap AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main14 (Heap AddrRange AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main18 (Heap AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main20 (Heap AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main23 (Heap AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main25 (Heap AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main28 (Heap AddrRange AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main30 (Heap AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main34 (Heap AddrRange AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main7 (Heap AddrRange AddrRange AddrRange AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap) (var12 AddrRange) (var13 AddrRange) (var14 Int) (var15 Heap) (var16 AddrRange) (var17 Int) (var18 Heap) (var19 Heap)) (or (not (and (and (and (and (= var19 emptyHeap) (and (= var18 (newBatchHeap (batchAlloc emptyHeap (O_Int var17) 100000))) (= var16 (newAddrRange (batchAlloc emptyHeap (O_Int var17) 100000))))) (and (and (= var15 (newBatchHeap (batchAlloc emptyHeap (O_Int var14) 100000))) (= var13 var16)) (= var12 (newAddrRange (batchAlloc emptyHeap (O_Int var14) 100000))))) (and (and (and (= var11 (newBatchHeap (batchAlloc emptyHeap (O_Int var10) 100000))) (= var9 var13)) (= var8 var12)) (= var7 (newAddrRange (batchAlloc emptyHeap (O_Int var10) 100000))))) (and (and (and (and (= var6 (newBatchHeap (batchAlloc emptyHeap (O_Int var5) 100000))) (= var4 var9)) (= var3 var8)) (= var2 var7)) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var5) 100000)))))) (inv_main7 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var3 var0))))) (inv_main30 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (or (not (inv_main7 var5 var4 var3 var2 var1 var0)) (inv_main13 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main14 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var9 var7))) (is-O_Int (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var5 (write var12 (nthAddrRange var9 var7) (O_Int var4))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var6 var7)))))) (inv_main13 var5 var3 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var4 var0))))) (inv_main25 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main25 var14 var13 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1))) (and (and (is-O_Int (read var14 (nthAddrRange var10 var8))) (is-O_Int (read var14 (nthAddrRange var10 var8)))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_Int var7))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)))))) (inv_main23 var5 var4 var3 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main20 var14 var13 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1)))) (and (and (is-O_Int (read var14 (nthAddrRange var12 var8))) (is-O_Int (read var14 (nthAddrRange var12 var8)))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var12 var8) (O_Int var7))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)))))) (inv_main23 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (and (is-O_Int (read var7 (nthAddrRange var6 var0))) (is-O_Int (read var7 (nthAddrRange var3 var0))))))) (inv_main34 var7 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main30 var14 var13 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1)))) (and (and (is-O_Int (read var14 (nthAddrRange var10 var8))) (is-O_Int (read var14 (nthAddrRange var10 var8)))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_Int var7))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)))))) (inv_main34 var5 var4 var3 var2 var1 var0 (+ var6 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main20 var14 var13 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1))) (and (and (is-O_Int (read var14 (nthAddrRange var12 var8))) (is-O_Int (read var14 (nthAddrRange var12 var8)))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var12 var8) (O_Int var7))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)))))) (inv_main18 var5 var4 var3 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main14 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var9 var7))) (is-O_Int (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var5 (write var12 (nthAddrRange var9 var7) (O_Int var4))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var6 var7)))))) (inv_main18 var5 var3 var2 var1 var0 (+ var6 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main30 var14 var13 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1))) (and (and (is-O_Int (read var14 (nthAddrRange var10 var8))) (is-O_Int (read var14 (nthAddrRange var10 var8)))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_Int var7))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)))))) (inv_main28 var5 var4 var3 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 AddrRange) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main25 var14 var13 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1)))) (and (and (is-O_Int (read var14 (nthAddrRange var10 var8))) (is-O_Int (read var14 (nthAddrRange var10 var8)))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_Int var7))) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9)) (= var6 var8)))))) (inv_main28 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var5 var0))))) (inv_main20 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main13 var12 var11 var10 var9 var8 var7) (and (and (is-O_Int (read var12 (nthAddrRange var11 var7))) (is-O_Int (read var12 (nthAddrRange var11 var7)))) (and (and (and (and (and (= var6 (write var12 (nthAddrRange var11 var7) (O_Int var5))) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main14 var6 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var0))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var0))) (not (is-O_Int (read var5 (nthAddrRange var4 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (not (is-O_Int (read var5 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var5 var1))) (not (within var5 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var5 var1))) (not (is-O_Int (read var7 (nthAddrRange var5 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main23 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var0))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main25 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main25 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main25 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var1))) (not (is-O_Int (read var7 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main30 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main30 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main30 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var3 var1))) (not (is-O_Int (read var7 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var6 (nthAddrRange var6 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var0))) (not (within var6 (nthAddrRange var6 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var0))) (not (is-O_Int (read var7 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var7 (nthAddrRange var6 var0))) (is-O_Int (read var7 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Heap)) (not (and (inv_main34 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var7 (nthAddrRange var6 var0))) (is-O_Int (read var7 (nthAddrRange var3 var0)))) (not (= (getInt (read var7 (nthAddrRange var6 var0))) (getInt (read var7 (nthAddrRange var3 var0))))))))))
(check-sat)
