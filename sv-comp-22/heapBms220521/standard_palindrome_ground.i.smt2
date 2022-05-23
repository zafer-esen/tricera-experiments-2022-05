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
(declare-fun inv_main14 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main18 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(declare-fun inv_main9 (Heap AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Heap)) (or (not (and (= var4 emptyHeap) (and (= var3 (newBatchHeap (batchAlloc emptyHeap (O_Int var2) 100000))) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var2) 100000)))))) (inv_main4 var3 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main9 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var3 1))) (- 1))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main9 var2 var0 (+ var3 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int)) (or (not (and (inv_main18 var3 var2 var1 var0) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var4)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var4)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var4))) (- 1))))) (<= 0 (+ (+ var4 (* (- 1) (+ var0 1))) (- 1)))) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (is-O_Int (read var3 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1))))))))) (inv_main18 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int)) (or (not (and (inv_main14 var6 var5 var4 var3) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var7)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var7)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var7))) (- 1))))) (<= 0 (+ var7 (- 1)))) (not (or (not (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var8)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var8)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var8))) (- 1)))))) (<= 0 (+ (+ var8 (* (- 1) (+ var2 1))) (- 1)))))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var1 (write var6 (nthAddrRange var5 var4) (O_Int var3))) (= var0 var5)) (= var2 var4)))))) (inv_main18 var1 var0 (+ var2 1) 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int)) (or (not (and (inv_main9 var6 var5 var4) (and (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var7)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var7)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var7))) (- 1))))) (<= 0 (+ var7 (- 1)))) (not (or (not (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var8)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var8)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var8))) (- 1)))))) (<= 0 (+ var8 (- 1)))))) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var3 1))) (- 1)))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4))))))) (inv_main18 var2 var0 0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main12 var2 var1 var0) (is-O_Int (read var2 (nthAddrRange var1 (+ (+ 100000 (* (- 1) var0)) (- 1))))))) (inv_main14 var2 var1 var0 (getInt (read var2 (nthAddrRange var1 (+ (+ 100000 (* (- 1) var0)) (- 1)))))))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int)) (or (not (and (inv_main14 var6 var5 var4 var3) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var7)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var7)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var7))) (- 1))))) (<= 0 (+ (+ var7 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var1 (write var6 (nthAddrRange var5 var4) (O_Int var3))) (= var0 var5)) (= var2 var4)))))) (inv_main12 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int)) (or (not (and (inv_main9 var6 var5 var4) (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 100000 (* (- 2) var7)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 100000 (* (- 2) var7)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 100000 (* (- 2) var7))) (- 1))))) (<= 0 (+ var7 (- 1)))) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var3 1))) (- 1)))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4))))))) (inv_main12 var2 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 (+ (+ 100000 (* (- 1) var0)) (- 1))))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 (+ (+ 100000 (* (- 1) var0)) (- 1))))) (not (within var1 (nthAddrRange var1 (+ (+ 100000 (* (- 1) var0)) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var1))) (not (within var2 (nthAddrRange var2 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var1))) (not (is-O_Int (read var3 (nthAddrRange var2 var1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (is-O_Int (read var3 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (and (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (is-O_Int (read var3 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1)))))) (not (within var2 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main18 var3 var2 var1 var0) (and (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (is-O_Int (read var3 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1)))))) (not (= (getInt (read var3 (nthAddrRange var2 var0))) (getInt (read var3 (nthAddrRange var2 (+ (+ 100000 (* (- 1) var0)) (- 1))))))))))))
(check-sat)