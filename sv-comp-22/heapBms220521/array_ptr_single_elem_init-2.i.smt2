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
(declare-fun inv_main10 (Heap Int AddrRange AddrRange AddrRange) Bool)
(declare-fun inv_main12 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main14 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main15 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main17 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main18 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main21 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main22 (Heap Int AddrRange AddrRange AddrRange Int) Bool)
(declare-fun inv_main26 (Heap Int AddrRange AddrRange AddrRange) Bool)
(declare-fun inv_main29 (Heap Int AddrRange AddrRange AddrRange) Bool)
(declare-fun inv_main6 (Heap Int AddrRange AddrRange AddrRange) Bool)
(declare-fun inv_main7 (Heap Int AddrRange AddrRange AddrRange) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Int) (var10 Heap) (var11 Heap)) (or (not (and (and (= var11 emptyHeap) (and (and (= var10 (newBatchHeap (batchAlloc emptyHeap (O_Int var9) 100000))) (= var8 var7)) (= var6 (newAddrRange (batchAlloc emptyHeap (O_Int var9) 100000))))) (and (and (and (= var5 (newBatchHeap (batchAlloc emptyHeap (O_Int var4) 100000))) (= var3 var8)) (= var2 var6)) (= var1 (newAddrRange (batchAlloc emptyHeap (O_Int var4) 100000)))))) (inv_main6 (newBatchHeap (batchAlloc emptyHeap (O_Int var0) 100000)) var3 var2 var1 (newAddrRange (batchAlloc emptyHeap (O_Int var0) 100000))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (or (not (and (inv_main10 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 100000 (* (- 1) (+ var3 1))) (- 1)))))) (inv_main7 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main18 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 0)) (is-O_Int (read var12 (nthAddrRange var9 var11)))) (and (and (and (and (and (and (= var5 var12) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var9 var11)))))))) (inv_main22 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main18 var12 var11 var10 var9 var8 var7) (and (and (= var6 0) (is-O_Int (read var12 (nthAddrRange var9 var11)))) (and (and (and (and (and (and (= var5 var12) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var9 var11)))))))) (inv_main21 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Heap)) (or (not (and (inv_main7 var9 var8 var7 var6 var5) (and (and (is-O_Int (read var9 (nthAddrRange var7 15000))) (is-O_Int (read var9 (nthAddrRange var7 15000)))) (and (and (and (and (= var4 (write var9 (nthAddrRange var7 15000) (O_Int 1))) (= var3 var8)) (= var2 var7)) (= var1 var6)) (= var0 var5))))) (inv_main26 var4 0 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (or (not (and (inv_main29 var4 var3 var2 var1 var0) (is-O_Int (read var4 (nthAddrRange var2 var3))))) (inv_main26 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (or (not (and (inv_main26 var4 var3 var2 var1 var0) (and (not (= var3 15000)) (<= 0 (+ (+ 100000 (* (- 1) var3)) (- 1)))))) (inv_main26 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var4))) (is-O_Int (read var5 (nthAddrRange var1 var4)))))) (inv_main10 (write var5 (nthAddrRange var1 var4) (O_Int 0)) var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main22 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var4))) (is-O_Int (read var5 (nthAddrRange var1 var4)))))) (inv_main10 (write var5 (nthAddrRange var1 var4) (O_Int 1)) var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main14 var12 var11 var10 var9 var8 var7) (and (and (= var6 0) (is-O_Int (read var12 (nthAddrRange var10 var11)))) (and (and (and (and (and (and (= var5 var12) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var10 var11)))))))) (inv_main10 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (is-O_Int (read var5 (nthAddrRange var3 var4)))))) (inv_main17 (write var5 (nthAddrRange var3 var4) (O_Int 1)) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (inv_main14 var12 var11 var10 var9 var8 var7) (and (and (not (= var6 0)) (is-O_Int (read var12 (nthAddrRange var10 var11)))) (and (and (and (and (and (and (= var5 var12) (= var4 var11)) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var6 (getInt (read var12 (nthAddrRange var10 var11)))))))) (inv_main18 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (inv_main6 var5 var4 var3 var2 var1)) (inv_main12 var5 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main10 var5 var4 var3 var2 var1) (<= 0 (+ (+ 100000 (* (- 1) (+ var4 1))) (- 1))))) (inv_main12 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap)) (or (not (and (inv_main12 var11 var10 var9 var8 var7 var6) (and (and (= var5 0) (and (is-O_Int (read var11 (nthAddrRange var9 var10))) (is-O_Int (read var11 (nthAddrRange var9 var10))))) (and (and (and (and (and (= var4 (write var11 (nthAddrRange var9 var10) (O_Int 0))) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var5 var6))))) (inv_main15 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (or (not (and (inv_main26 var4 var3 var2 var1 var0) (and (= var3 15000) (<= 0 (+ (+ 100000 (* (- 1) var3)) (- 1)))))) (inv_main29 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int)) (or (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var4))) (is-O_Int (read var5 (nthAddrRange var2 var4)))))) (or (not (and (and (and (and (<= 0 (+ (+ 2 (* (- 1) var6)) (- 1))) (<= 0 (+ (+ 2 (* 1 var6)) (- 1)))) (or (not (<= 0 (+ var6 (- 1)))) (<= 0 (+ var4 (- 1))))) (or (not (<= 0 (+ (* (- 1) var6) (- 1)))) (<= 0 (+ (* (- 1) var4) (- 1))))) (= var4 (+ (* 2 var7) var6)))) (inv_main14 (write var5 (nthAddrRange var2 var4) (O_Int var6)) var4 var3 var2 var1 var0)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 AddrRange) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap)) (or (not (and (inv_main12 var11 var10 var9 var8 var7 var6) (and (and (not (= var5 0)) (and (is-O_Int (read var11 (nthAddrRange var9 var10))) (is-O_Int (read var11 (nthAddrRange var9 var10))))) (and (and (and (and (and (= var4 (write var11 (nthAddrRange var9 var10) (O_Int 0))) (= var3 var10)) (= var2 var9)) (= var1 var8)) (= var0 var7)) (= var5 var6))))) (inv_main14 var4 var3 var2 var1 var0 var5))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (not (within var3 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (not (is-O_Int (read var5 (nthAddrRange var3 var4)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (not (within var3 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main15 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (not (is-O_Int (read var5 (nthAddrRange var3 var4)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var4))) (not (within var2 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var4))) (not (is-O_Int (read var5 (nthAddrRange var2 var4)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var3 var4))) (not (within var3 (nthAddrRange var3 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var2 var4))) (not (within var2 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var4))) (not (within var1 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var4))) (not (is-O_Int (read var5 (nthAddrRange var1 var4)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main22 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main22 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var4))) (not (within var1 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main22 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var4))) (not (is-O_Int (read var5 (nthAddrRange var1 var4)))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main7 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 15000))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main7 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 15000))) (not (within var2 (nthAddrRange var2 15000))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main7 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 15000))) (not (is-O_Int (read var4 (nthAddrRange var2 15000)))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 var3))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var3)))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var2 var3))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var3))) (not (within var2 (nthAddrRange var2 var3))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Heap)) (not (and (inv_main29 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var2 var3))) (= (getInt (read var4 (nthAddrRange var2 var3))) 1))))))
(check-sat)
