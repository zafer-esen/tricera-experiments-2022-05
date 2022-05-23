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
(declare-fun inv_main11 (Heap AddrRange Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(declare-fun inv_main9 (Heap AddrRange Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Heap)) (or (not (and (= var4 emptyHeap) (and (= var3 (newBatchHeap (batchAlloc emptyHeap (O_Int var2) 1024))) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var2) 1024)))))) (inv_main4 var3 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main11 var10 var9 var8) (and (and (not (= var7 0)) (and (and (<= 0 (+ (+ 1024 (* (- 1) var8)) (- 1))) (is-O_Int (read var10 (nthAddrRange var9 var8)))) (and (and (and (= var6 var10) (= var5 var9)) (= var4 var8)) (= var3 (getInt (read var10 (nthAddrRange var9 var8))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (not (= var3 0)) (= var7 1)) (and (= var3 0) (= var7 0))))))) (inv_main11 var2 var1 (+ var0 1)))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (not (<= 0 (+ (+ 1024 (* (- 1) (+ var3 1))) (- 1)))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main11 var2 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main11 var2 var1 var0) (not (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1)))))) (inv_main10 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Heap)) (or (not (and (inv_main11 var10 var9 var8) (and (and (= var7 0) (and (and (<= 0 (+ (+ 1024 (* (- 1) var8)) (- 1))) (is-O_Int (read var10 (nthAddrRange var9 var8)))) (and (and (and (= var6 var10) (= var5 var9)) (= var4 var8)) (= var3 (getInt (read var10 (nthAddrRange var9 var8))))))) (and (and (and (= var2 var6) (= var1 var5)) (= var0 var4)) (or (and (not (= var3 0)) (= var7 1)) (and (= var3 0) (= var7 0))))))) (inv_main10 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main9 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main9 var6 var5 var4) (and (<= 0 (+ (+ 1024 (* (- 1) (+ var3 1))) (- 1))) (and (and (is-O_Int (read var6 (nthAddrRange var5 var4))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (and (and (= var2 (write var6 (nthAddrRange var5 var4) (O_Int var1))) (= var0 var5)) (= var3 var4)))))) (inv_main9 var2 var0 (+ var3 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main9 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (and (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (and (and (<= 0 (+ (+ 1024 (* (- 1) var0)) (- 1))) (is-O_Int (read var2 (nthAddrRange var1 var0)))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int)) (not (and (inv_main10 var2 var1 var0) (not (or (not (and (and (<= 0 (+ (+ 2 (* (- 1) (+ 1024 (* (- 2) var3)))) (- 1))) (<= 0 (+ (+ 2 (* 1 (+ 1024 (* (- 2) var3)))) (- 1)))) (not (<= 0 (+ (* (- 1) (+ 1024 (* (- 2) var3))) (- 1)))))) (<= 0 (+ var3 (* (- 1) var0)))))))))
(check-sat)
