(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
(declare-heap Heap Addr HeapObject
 defObj
 ((HeapObject 0) (S 0)) (
  (
   (O_Int (getInt Int))
   (O_UInt (getUInt Int))
   (O_Addr (getAddr Addr))
   (O_S (getS S))
   (defObj)
  )
  (
   (S (n Int))
  )
))
(declare-fun inv_main12 (Heap AddrRange Int) Bool)
(declare-fun inv_main15 (Heap AddrRange Int) Bool)
(declare-fun inv_main3 (Heap AddrRange Int) Bool)
(declare-fun inv_main5 (Heap AddrRange Int) Bool)
(declare-fun inv_main8 (Heap AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_S (S 0)) 1000000))) (= var1 (newAddrRange (batchAlloc emptyHeap (O_S (S 0)) 1000000))))) (inv_main3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int)) (or (not (and (inv_main5 var2 var1 var0) (and (not (or (not (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 1000000 (* (- 2) var3)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 1000000 (* (- 2) var3)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 1000000 (* (- 2) var3))) (- 1)))))) (<= 0 (+ (+ var0 (* (- 1) var3)) (- 1))))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))) (inv_main8 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main5 var2 var1 var0) (not (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))) (inv_main12 var2 var1 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int)) (or (not (and (inv_main5 var2 var1 var0) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 1000000 (* (- 2) var3)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 1000000 (* (- 2) var3)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 1000000 (* (- 2) var3))) (- 1))))) (<= 0 (+ (+ var0 (* (- 1) var3)) (- 1)))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))) (inv_main12 var2 var1 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main15 var2 var1 var0) (is-O_S (read var2 (nthAddrRange var1 var0))))) (inv_main12 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int)) (or (not (and (inv_main12 var2 var1 var0) (and (not (or (not (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 1000000 (* (- 2) var3)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 1000000 (* (- 2) var3)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 1000000 (* (- 2) var3))) (- 1)))))) (<= 0 (+ var3 (* (- 1) var0))))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))) (inv_main12 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int)) (or (not (and (inv_main12 var2 var1 var0) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 1000000 (* (- 2) var3)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 1000000 (* (- 2) var3)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 1000000 (* (- 2) var3))) (- 1))))) (<= 0 (+ var3 (* (- 1) var0)))) (<= 0 (+ (+ 1000000 (* (- 1) var0)) (- 1)))))) (inv_main15 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (inv_main3 var2 var1 var0)) (inv_main5 var2 var1 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main8 var5 var4 var3) (and (and (is-O_S (read var5 (nthAddrRange var4 var3))) (is-O_S (read var5 (nthAddrRange var4 var3)))) (and (and (= var2 (write var5 (nthAddrRange var4 var3) (O_S (S 10)))) (= var1 var4)) (= var0 var3))))) (inv_main5 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main8 var2 var1 var0) (not (is-O_S (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main8 var2 var1 var0) (and (is-O_S (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main8 var2 var1 var0) (and (is-O_S (read var2 (nthAddrRange var1 var0))) (not (is-O_S (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main15 var2 var1 var0) (not (is-O_S (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main15 var2 var1 var0) (not (within var1 (nthAddrRange var1 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main15 var2 var1 var0) (not (is-O_S (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main15 var2 var1 var0) (and (is-O_S (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main15 var2 var1 var0) (and (is-O_S (read var2 (nthAddrRange var1 var0))) (not (= (n (getS (read var2 (nthAddrRange var1 var0)))) 10)))))))
(check-sat)
