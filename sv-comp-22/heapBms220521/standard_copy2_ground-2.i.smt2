(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
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
(declare-fun inv_main11 (Heap AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main15 (Heap AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main17 (Heap AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main20 (Heap AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main22 (Heap AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main26 (Heap AddrRange AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main6 (Heap AddrRange AddrRange AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap) (var10 AddrRange) (var11 Int) (var12 Heap) (var13 Heap)) (or (not (and (and (and (= var13 emptyHeap) (and (= var12 (newBatchHeap (batchAlloc emptyHeap (O_Int var11) 100000))) (= var10 (newAddrRange (batchAlloc emptyHeap (O_Int var11) 100000))))) (and (and (= var9 (newBatchHeap (batchAlloc emptyHeap (O_Int var8) 100000))) (= var7 var10)) (= var6 (newAddrRange (batchAlloc emptyHeap (O_Int var8) 100000))))) (and (and (and (= var5 (newBatchHeap (batchAlloc emptyHeap (O_Int var4) 100000))) (= var3 var7)) (= var2 var6)) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var4) 100000)))))) (inv_main6 var5 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (is-O_Int (read var5 (nthAddrRange var3 var0))))) (inv_main22 var5 var4 var3 var2 var1 var0 (getInt (read var5 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (is-O_Int (read var5 (nthAddrRange var4 var0))))) (inv_main17 var5 var4 var3 var2 var1 var0 (getInt (read var5 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (is-O_Int (read var6 (nthAddrRange var3 var0))))))) (inv_main26 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main22 var12 var11 var10 var9 var8 var7 var6) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var9 var7))) (is-O_Int (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var9 var7) (O_Int var6))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main26 var4 var3 var2 var1 var0 (+ var5 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (inv_main6 var4 var3 var2 var1 var0)) (inv_main11 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main11 var10 var9 var8 var7 var6) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_Int (read var10 (nthAddrRange var9 var6))) (is-O_Int (read var10 (nthAddrRange var9 var6)))) (and (and (and (and (= var4 (write var10 (nthAddrRange var9 var6) (O_Int var3))) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var5 var6)))))) (inv_main11 var4 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main22 var12 var11 var10 var9 var8 var7 var6) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var9 var7))) (is-O_Int (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var9 var7) (O_Int var6))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main20 var4 var3 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main17 var12 var11 var10 var9 var8 var7 var6) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var10 var7))) (is-O_Int (read var12 (nthAddrRange var10 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var10 var7) (O_Int var6))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main20 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main17 var12 var11 var10 var9 var8 var7 var6) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var10 var7))) (is-O_Int (read var12 (nthAddrRange var10 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var10 var7) (O_Int var6))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main15 var4 var3 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main11 var10 var9 var8 var7 var6) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var10 (nthAddrRange var9 var6))) (is-O_Int (read var10 (nthAddrRange var9 var6)))) (and (and (and (and (= var4 (write var10 (nthAddrRange var9 var6) (O_Int var3))) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var5 var6)))))) (inv_main15 var4 var2 var1 var0 (+ var5 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main11 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main11 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main11 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (is-O_Int (read var4 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var0))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var1))) (not (within var4 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var4 var1))) (not (is-O_Int (read var6 (nthAddrRange var4 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var3 var1))) (not (is-O_Int (read var6 (nthAddrRange var3 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (is-O_Int (read var6 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (is-O_Int (read var6 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (is-O_Int (read var6 (nthAddrRange var3 var0)))) (not (= (getInt (read var6 (nthAddrRange var5 var0))) (getInt (read var6 (nthAddrRange var3 var0))))))))))
(check-sat)