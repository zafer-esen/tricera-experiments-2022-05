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
(declare-fun inv_main11 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main13 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main16 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main19 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Int AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main22 (Heap Int AddrRange AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main24 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var4 (* (- 1) (+ var0 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (is-O_Int (read var5 (nthAddrRange var2 var0))))))) (inv_main24 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var4 (- 1))) (and (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1)))))))) (inv_main24 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main22 var12 var11 var10 var9 var8 var7 var6) (and (<= 0 (+ var5 (- 1))) (and (not (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var8 var7))) (is-O_Int (read var12 (nthAddrRange var8 var7)))) (and (and (and (and (and (= var3 (write var12 (nthAddrRange var8 var7) (O_Int var6))) (= var5 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var4 var7))))))) (inv_main24 var3 var5 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1))))) (inv_main16 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main11 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var10 var7))) (is-O_Int (read var12 (nthAddrRange var10 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var10 var7) (O_Int var3))) (= var6 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main11 var4 var6 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main2 var10) (and (and (and (<= 0 (+ var9 (- 1))) (<= 0 var8)) (and (and (and (and (= var7 (newBatchHeap (batchAlloc (newBatchHeap (batchAlloc (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5)) (O_Int var4) var5)) (O_Int var3) var5))) (= var9 var5)) (= var2 (newAddrRange (batchAlloc emptyHeap (O_Int var6) var5)))) (= var1 (newAddrRange (batchAlloc (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5)) (O_Int var4) var5)))) (= var0 (newAddrRange (batchAlloc (newBatchHeap (batchAlloc (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5)) (O_Int var4) var5)) (O_Int var3) var5))))) (<= 0 var5)))) (inv_main11 var7 var9 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (is-O_Int (read var5 (nthAddrRange var3 var0))))) (inv_main21 var5 var4 var3 var2 var1 var0 (getInt (read var5 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (or (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var3 var1))))) (inv_main22 var6 var5 var4 var3 var2 var1 (+ var0 (getInt (read var6 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var4 (- 1))) (not (<= 0 (+ (+ var4 (* (- 1) var0)) (- 1))))))) (inv_main19 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main22 var12 var11 var10 var9 var8 var7 var6) (and (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var8 var7))) (is-O_Int (read var12 (nthAddrRange var8 var7)))) (and (and (and (and (and (= var3 (write var12 (nthAddrRange var8 var7) (O_Int var6))) (= var5 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var4 var7)))))) (inv_main19 var3 var5 var2 var1 var0 (+ var4 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main16 var12 var11 var10 var9 var8 var7) (and (and (is-O_Int (read var12 (nthAddrRange var9 var7))) (is-O_Int (read var12 (nthAddrRange var9 var7)))) (and (and (and (and (and (= var6 (write var12 (nthAddrRange var9 var7) (O_Int var5))) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7))))) (inv_main13 var6 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main11 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var10 var7))) (is-O_Int (read var12 (nthAddrRange var10 var7)))) (and (and (and (and (and (= var4 (write var12 (nthAddrRange var10 var7) (O_Int var3))) (= var6 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var5 var7)))))) (inv_main13 var4 var6 var2 var1 var0 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main2 var10) (and (and (and (not (<= 0 (+ var9 (- 1)))) (<= 0 var8)) (and (and (and (and (= var7 (newBatchHeap (batchAlloc (newBatchHeap (batchAlloc (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5)) (O_Int var4) var5)) (O_Int var3) var5))) (= var9 var5)) (= var2 (newAddrRange (batchAlloc emptyHeap (O_Int var6) var5)))) (= var1 (newAddrRange (batchAlloc (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5)) (O_Int var4) var5)))) (= var0 (newAddrRange (batchAlloc (newBatchHeap (batchAlloc (newBatchHeap (batchAlloc emptyHeap (O_Int var6) var5)) (O_Int var4) var5)) (O_Int var3) var5))))) (<= 0 var5)))) (inv_main13 var7 var9 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main11 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main11 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main11 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var0))) (not (is-O_Int (read var5 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var0))) (not (is-O_Int (read var5 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main19 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var2 var1))) (not (is-O_Int (read var6 (nthAddrRange var2 var1)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (within var1 (nthAddrRange var1 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (not (is-O_Int (read var5 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (not (is-O_Int (read var5 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (and (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (is-O_Int (read var5 (nthAddrRange var2 var0)))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main24 var5 var4 var3 var2 var1 var0) (and (and (and (is-O_Int (read var5 (nthAddrRange var1 var0))) (is-O_Int (read var5 (nthAddrRange var3 var0)))) (is-O_Int (read var5 (nthAddrRange var2 var0)))) (not (= (getInt (read var5 (nthAddrRange var1 var0))) (+ (getInt (read var5 (nthAddrRange var3 var0))) (* (- 1) (getInt (read var5 (nthAddrRange var2 var0))))))))))))
(check-sat)
