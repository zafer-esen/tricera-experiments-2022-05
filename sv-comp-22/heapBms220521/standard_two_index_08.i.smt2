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
(declare-fun inv_main10 (Heap AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main13 (Heap AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main15 (Heap AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main20 (Heap AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main6 (Heap AddrRange AddrRange Int Int) Bool)
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 AddrRange) (var5 Int) (var6 Heap) (var7 Heap)) (or (not (and (and (= var7 emptyHeap) (and (= var6 (newBatchHeap (batchAlloc emptyHeap (O_Int var5) 100000))) (= var4 (newAddrRange (batchAlloc emptyHeap (O_Int var5) 100000))))) (and (and (= var3 (newBatchHeap (batchAlloc emptyHeap (O_Int var2) 100000))) (= var1 var4)) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var2) 100000)))))) (inv_main6 var3 var1 var0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main20 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var1 8))) (- 1))) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (is-O_Int (read var4 (nthAddrRange var2 (+ (* 8 var0) 1)))))))) (inv_main20 var4 var3 var2 (+ var1 8) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main15 var10 var9 var8 var7 var6 var5) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var4 8))) (- 1)))) (and (and (is-O_Int (read var10 (nthAddrRange var9 var6))) (is-O_Int (read var10 (nthAddrRange var9 var6)))) (and (and (and (and (= var3 (write var10 (nthAddrRange var9 var6) (O_Int var5))) (= var2 var9)) (= var1 var8)) (= var4 var7)) (= var0 var6)))))) (inv_main20 var3 var2 var1 1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main13 var4 var3 var2 var1 var0) (is-O_Int (read var4 (nthAddrRange var2 var1))))) (inv_main15 var4 var3 var2 var1 var0 (getInt (read var4 (nthAddrRange var2 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main10 var10 var9 var8 var7 var6) (and (and (is-O_Int (read var10 (nthAddrRange var8 var7))) (is-O_Int (read var10 (nthAddrRange var8 var7)))) (and (and (and (and (= var5 (write var10 (nthAddrRange var8 var7) (O_Int var4))) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 var6))))) (inv_main6 var5 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main6 var4 var3 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var1)) (- 1))))) (inv_main10 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main6 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 100000 (* (- 1) var1)) (- 1)))))) (inv_main13 var4 var3 var2 1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main15 var10 var9 var8 var7 var6 var5) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var4 8))) (- 1))) (and (and (is-O_Int (read var10 (nthAddrRange var9 var6))) (is-O_Int (read var10 (nthAddrRange var9 var6)))) (and (and (and (and (= var3 (write var10 (nthAddrRange var9 var6) (O_Int var5))) (= var2 var9)) (= var1 var8)) (= var4 var7)) (= var0 var6)))))) (inv_main13 var3 var2 var1 (+ var4 8) (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main10 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main10 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main10 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var1))) (not (is-O_Int (read var4 (nthAddrRange var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main13 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var1))) (not (within var4 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var1))) (not (is-O_Int (read var5 (nthAddrRange var4 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 (+ (* 8 var0) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 (+ (* 8 var0) 1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (not (is-O_Int (read var4 (nthAddrRange var2 (+ (* 8 var0) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (is-O_Int (read var4 (nthAddrRange var2 (+ (* 8 var0) 1))))) (not (within var2 (nthAddrRange var2 (+ (* 8 var0) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var4 (nthAddrRange var3 var0))) (is-O_Int (read var4 (nthAddrRange var2 (+ (* 8 var0) 1))))) (not (= (getInt (read var4 (nthAddrRange var3 var0))) (getInt (read var4 (nthAddrRange var2 (+ (* 8 var0) 1)))))))))))
(check-sat)
