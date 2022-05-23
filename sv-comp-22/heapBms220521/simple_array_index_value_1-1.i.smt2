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
(declare-fun inv_main12 (Heap AddrRange Int) Bool)
(declare-fun inv_main13 (Heap AddrRange Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(declare-fun inv_main7 (Heap AddrRange Int) Bool)
(declare-fun inv_main9 (Heap AddrRange Int) Bool)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap) (var4 Int)) (or (not (and (and (<= 0 var4) (= var3 emptyHeap)) (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_UInt var1) 1000))) (= var0 (newAddrRange (batchAlloc emptyHeap (O_UInt var1) 1000)))))) (inv_main4 var2 var0 var4))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int)) (or (not (and (inv_main7 var5 var4 var3) (and (not (<= 0 (+ (+ 1000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_UInt (read var5 (nthAddrRange var4 var3))) (is-O_UInt (read var5 (nthAddrRange var4 var3)))) (and (and (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var6)) (- 1))) (<= 0 (+ (+ 2 (* 1 var6)) (- 1)))) (or (not (<= 0 (+ var6 (- 1)))) (<= 0 (+ var3 (- 1))))) (or (not (<= 0 (+ (* (- 1) var6) (- 1)))) (<= 0 (+ (* (- 1) var3) (- 1))))) (= var3 (+ (* 2 var7) var6))) (= var1 (write var5 (nthAddrRange var4 var3) (O_UInt var6)))) (= var0 var4)) (= var2 var3)))))) (inv_main9 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main12 var2 var1 var0) (is-O_UInt (read var2 (nthAddrRange var1 var0))))) (inv_main9 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main13 var2 var1 var0) (is-O_UInt (read var2 (nthAddrRange var1 var0))))) (inv_main9 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 Int)) (or (not (and (inv_main9 var2 var1 var0) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ 2 (* 1 var3)) (- 1)))) (or (not (<= 0 (+ var3 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var3) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 2 var4) var3)))) (= var3 0))) (<= 0 (+ (+ 1000 (* (- 1) var0)) (- 1)))))) (inv_main13 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main7 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int)) (or (not (and (inv_main7 var5 var4 var3) (and (<= 0 (+ (+ 1000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_UInt (read var5 (nthAddrRange var4 var3))) (is-O_UInt (read var5 (nthAddrRange var4 var3)))) (and (and (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var6)) (- 1))) (<= 0 (+ (+ 2 (* 1 var6)) (- 1)))) (or (not (<= 0 (+ var6 (- 1)))) (<= 0 (+ var3 (- 1))))) (or (not (<= 0 (+ (* (- 1) var6) (- 1)))) (<= 0 (+ (* (- 1) var3) (- 1))))) (= var3 (+ (* 2 var7) var6))) (= var1 (write var5 (nthAddrRange var4 var3) (O_UInt var6)))) (= var0 var4)) (= var2 var3)))))) (inv_main7 var1 var0 (+ var2 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 Int)) (or (not (and (inv_main9 var2 var1 var0) (and (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var3)) (- 1))) (<= 0 (+ (+ 2 (* 1 var3)) (- 1)))) (or (not (<= 0 (+ var3 (- 1)))) (<= 0 (+ var0 (- 1))))) (or (not (<= 0 (+ (* (- 1) var3) (- 1)))) (<= 0 (+ (* (- 1) var0) (- 1))))) (= var0 (+ (* 2 var4) var3))) (= var3 0)) (<= 0 (+ (+ 1000 (* (- 1) var0)) (- 1)))))) (inv_main12 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (not (is-O_UInt (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (and (is-O_UInt (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (and (is-O_UInt (read var2 (nthAddrRange var1 var0))) (not (is-O_UInt (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_UInt (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (within var1 (nthAddrRange var1 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_UInt (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (and (is-O_UInt (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (and (is-O_UInt (read var2 (nthAddrRange var1 var0))) (not (= (getUInt (read var2 (nthAddrRange var1 var0))) 0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (not (is-O_UInt (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (not (within var1 (nthAddrRange var1 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (not (is-O_UInt (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (and (is-O_UInt (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (and (is-O_UInt (read var2 (nthAddrRange var1 var0))) (= (getUInt (read var2 (nthAddrRange var1 var0))) 0))))))
(check-sat)
