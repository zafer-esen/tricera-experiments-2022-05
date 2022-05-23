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
(declare-fun inv_main10 (Heap AddrRange Int) Bool)
(declare-fun inv_main14 (Heap AddrRange Int) Bool)
(declare-fun inv_main18 (Heap AddrRange Int) Bool)
(declare-fun inv_main23 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(declare-fun inv_main6 (Heap AddrRange Int) Bool)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (= var3 emptyHeap) (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_Int var1) 100000))) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var1) 100000)))))) (inv_main4 var2 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main6 var5 var4 var3) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var2 (write var5 (nthAddrRange var4 var3) (O_Int 42))) (= var1 var4)) (= var0 var3))))) (inv_main4 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main4 var2 var1 var0) (not (<= 0 (+ (+ 100000 (* (- 1) var0)) (- 1)))))) (inv_main10 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main10 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 43))) (= var0 var4)) (= var2 var3)))))) (inv_main10 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main18 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 45))) (= var0 var4)) (= var2 var3)))))) (inv_main18 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main14 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 44))) (= var0 var4)) (= var2 var3)))))) (inv_main18 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main4 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var0)) (- 1))))) (inv_main6 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main14 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 44))) (= var0 var4)) (= var2 var3)))))) (inv_main14 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main10 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 43))) (= var0 var4)) (= var2 var3)))))) (inv_main14 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (or (not (and (inv_main23 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (is-O_Int (read var3 (nthAddrRange var2 var0)))))) (inv_main23 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main18 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 45))) (= var0 var4)) (= var2 var3)))))) (inv_main23 var1 var0 (+ var2 1) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (= (getInt (read var3 (nthAddrRange var2 var0))) 46)))))))
(check-sat)
