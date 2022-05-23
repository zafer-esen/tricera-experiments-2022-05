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
(declare-fun inv_main14 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main18 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main2 (Heap Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main14 var9 var8 var7 var6 var5) (and (<= 0 (+ (+ var4 (* (- 1) (+ var3 1))) (- 1))) (and (and (is-O_Int (read var9 (nthAddrRange var5 var6))) (is-O_Int (read var9 (nthAddrRange var5 var6)))) (and (and (and (and (= var2 (write var9 (nthAddrRange var5 var6) (O_Int var6))) (= var4 var8)) (= var3 var7)) (= var1 var6)) (= var0 var5)))))) (inv_main14 var2 var4 (+ var3 1) (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main2 var10 var9) (and (and (<= 0 (+ var8 (- 1))) (and (and (and (and (= var7 (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5))) (= var8 var5)) (= var4 var3)) (= var2 var1)) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var6) var5))))) (<= 0 (+ var5 (- 1)))))) (inv_main14 var7 var8 0 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main18 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var3 (* (- 1) (+ var2 1))) (- 1))) (is-O_Int (read var4 (nthAddrRange var0 var2)))))) (inv_main18 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main14 var9 var8 var7 var6 var5) (and (<= 0 (+ var4 (- 1))) (and (not (<= 0 (+ (+ var4 (* (- 1) (+ var3 1))) (- 1)))) (and (and (is-O_Int (read var9 (nthAddrRange var5 var6))) (is-O_Int (read var9 (nthAddrRange var5 var6)))) (and (and (and (and (= var2 (write var9 (nthAddrRange var5 var6) (O_Int var6))) (= var4 var8)) (= var3 var7)) (= var1 var6)) (= var0 var5))))))) (inv_main18 var2 var4 0 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main2 var10 var9) (and (<= 0 (+ var8 (- 1))) (and (and (not (<= 0 (+ var8 (- 1)))) (and (and (and (and (= var7 (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5))) (= var8 var5)) (= var4 var3)) (= var2 var1)) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var6) var5))))) (<= 0 (+ var5 (- 1))))))) (inv_main18 var7 var8 0 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main14 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main14 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main14 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var1))) (not (is-O_Int (read var4 (nthAddrRange var0 var1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main18 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main18 var4 var3 var2 var1 var0) (not (within var0 (nthAddrRange var0 var2)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main18 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var0 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main18 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var2))) (not (within var0 (nthAddrRange var0 var2))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main18 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var0 var2))) (not (= (getInt (read var4 (nthAddrRange var0 var2))) var2)))))))
(check-sat)
