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
(declare-fun inv_main11 (Heap Int AddrRange) Bool)
(declare-fun inv_main14 (Heap Int AddrRange) Bool)
(declare-fun inv_main4 (Heap Int AddrRange) Bool)
(declare-fun inv_main7 (Heap Int AddrRange) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Heap)) (or (not (= var2 emptyHeap)) (inv_main4 (newBatchHeap (batchAlloc emptyHeap (O_Int var1) 100000)) var0 (newAddrRange (batchAlloc emptyHeap (O_Int var1) 100000))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (or (not (and (inv_main11 var2 var1 var0) (and (not (= (+ var1 1) 15000)) (is-O_Int (read var2 (nthAddrRange var0 var1)))))) (inv_main14 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main7 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (is-O_Int (read var5 (nthAddrRange var3 var4)))) (and (and (= var1 (write var5 (nthAddrRange var3 var4) (O_Int 10))) (= var2 var4)) (= var0 var3)))))) (inv_main11 var1 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main14 var5 var4 var3) (and (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (is-O_Int (read var5 (nthAddrRange var3 (+ var4 1)))) (is-O_Int (read var5 (nthAddrRange var3 (+ var4 1)))))) (and (and (= var1 (write var5 (nthAddrRange var3 (+ var4 1)) (O_Int 20))) (= var2 var4)) (= var0 var3))))) (inv_main11 var1 (+ var2 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (or (not (and (inv_main11 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var1 1))) (- 1))) (and (= (+ var1 1) 15000) (is-O_Int (read var2 (nthAddrRange var0 var1))))))) (inv_main11 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main7 var2 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main7 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (is-O_Int (read var5 (nthAddrRange var3 var4)))) (and (and (= var1 (write var5 (nthAddrRange var3 var4) (O_Int 10))) (= var2 var4)) (= var0 var3)))))) (inv_main7 var1 (+ var2 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var0 var1))) (not (is-O_Int (read var2 (nthAddrRange var0 var1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (not (within var0 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var0 var1))) (not (within var0 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var0 var1))) (not (= (getInt (read var2 (nthAddrRange var0 var1))) 10)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var0 (+ var1 1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var0 (+ var1 1)))) (not (within var0 (nthAddrRange var0 (+ var1 1)))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var0 (+ var1 1)))) (not (is-O_Int (read var2 (nthAddrRange var0 (+ var1 1))))))))))
(check-sat)
