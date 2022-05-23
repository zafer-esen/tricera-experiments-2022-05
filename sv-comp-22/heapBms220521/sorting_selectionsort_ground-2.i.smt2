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
(declare-fun inv_main12 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main13 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main17 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main19 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Heap AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main27 (Heap AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main28 (Heap AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main29 (Heap AddrRange Int Int Int Int Int Int Int) Bool)
(declare-fun inv_main31 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main35 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main39 (Heap AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main45 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main46 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main6 (Heap AddrRange Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Heap)) (or (not (and (= var5 emptyHeap) (and (= var4 (newBatchHeap (batchAlloc emptyHeap (O_Int var3) 100000))) (= var2 (newAddrRange (batchAlloc emptyHeap (O_Int var3) 100000)))))) (inv_main6 var4 var2 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var4 (* (- 1) (+ var3 1))) (- 1))) (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1)))))) (inv_main35 var6 var5 var4 var3 (+ var3 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var4 (* (- 1) (+ var2 1))) (- 1))) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var2))))))) (inv_main35 var6 var5 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var1))) (<= 0 (+ (+ (getInt (read var7 (nthAddrRange var6 var1))) (* (- 1) var0)) (- 1)))))) (inv_main17 var7 var6 var5 var4 var3 (+ var2 1) var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var1))) (not (<= 0 (+ (+ (getInt (read var7 (nthAddrRange var6 var1))) (* (- 1) var0)) (- 1))))))) (inv_main17 var7 var6 var5 var4 var3 (+ var2 1) var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main13 var4 var3 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var2)) (- 1))))) (inv_main17 var4 var3 var2 var1 var0 (+ var2 1) var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var5 var1))))) (inv_main23 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (inv_main6 var4 var3 var2 var1 var0)) (inv_main12 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1))) (and (and (is-O_Int (read var12 (nthAddrRange var11 var7))) (is-O_Int (read var12 (nthAddrRange var11 var7)))) (and (and (and (and (and (= var5 (write var12 (nthAddrRange var11 var7) (O_Int var4))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var6 var7)))))) (inv_main12 var5 var3 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 100000 (* (- 1) var4)) (- 1)))) (not (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))))))) (inv_main13 var6 var5 (+ var4 1) var4 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var3 1))) (- 1)))) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var4))))))) (inv_main13 var6 var5 (+ var4 1) (+ var3 1) var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Heap)) (or (not (and (inv_main12 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var6 1))) (- 1)))) (and (and (is-O_Int (read var12 (nthAddrRange var11 var7))) (is-O_Int (read var12 (nthAddrRange var11 var7)))) (and (and (and (and (and (= var5 (write var12 (nthAddrRange var11 var7) (O_Int var4))) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8)) (= var6 var7)))))) (inv_main13 var5 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main45 var4 var3 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var0)) (- 1))))) (inv_main46 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Heap)) (or (not (and (inv_main28 var14 var13 var12 var11 var10 var9 var8 var7) (and (and (is-O_Int (read var14 (nthAddrRange var13 var12))) (is-O_Int (read var14 (nthAddrRange var13 var12)))) (and (and (and (and (and (and (= var6 (write var14 (nthAddrRange var13 var12) (O_Int var7))) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main31 var6 var5 var4 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (= var0 var4) (not (<= 0 (+ (+ 100000 (* (- 1) var1)) (- 1))))))) (inv_main31 var6 var5 var4 0 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var4 (* (- 1) (+ var3 1))) (- 1)))) (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1)))))) (inv_main31 var6 var5 var4 (+ var3 1) (+ var3 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var4 (* (- 1) (+ var2 1))) (- 1)))) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var2))))))) (inv_main31 var6 var5 var4 (+ var3 1) (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (or (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var2))) (is-O_Int (read var8 (nthAddrRange var7 var2)))))) (inv_main28 (write var8 (nthAddrRange var7 var2) (O_Int var0)) var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (and (not (= var0 var4)) (not (<= 0 (+ (+ 100000 (* (- 1) var1)) (- 1))))))) (inv_main25 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (or (not (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var7 (nthAddrRange var6 var5))))) (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var7 (nthAddrRange var6 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var1)) (- 1))))) (inv_main19 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main46 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var1))) (is-O_Int (read var4 (nthAddrRange var3 var0)))))) (inv_main45 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main13 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ 100000 (* (- 1) var2)) (- 1)))))) (inv_main45 var4 var3 var2 0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (inv_main45 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var1 1))) (- 1))) (not (<= 0 (+ (+ 100000 (* (- 1) var0)) (- 1))))))) (inv_main45 var4 var3 var2 (+ var1 1) (+ (+ var1 1) 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main25 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var6 (nthAddrRange var5 var0))))) (inv_main27 var6 var5 var4 var3 var2 var1 var0 (getInt (read var6 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main31 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) var4)) (- 1))) (not (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))))))) (inv_main39 var6 var5 var4 var4 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (or (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var3 1))) (- 1))) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var4))))))) (inv_main39 var6 var5 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var0))) (not (within var4 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var4 var0))) (not (is-O_Int (read var5 (nthAddrRange var4 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var1))) (not (within var5 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var1))) (not (within var6 (nthAddrRange var6 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main25 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main25 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main27 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var5))) (not (within var6 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var7 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var2))) (not (within var7 (nthAddrRange var7 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Heap)) (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var7 var2))) (not (is-O_Int (read var8 (nthAddrRange var7 var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main28 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main28 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var5))) (not (within var6 (nthAddrRange var6 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Heap)) (not (and (inv_main28 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var6 var5))) (not (is-O_Int (read var7 (nthAddrRange var6 var5)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (not (within var5 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (not (is-O_Int (read var6 (nthAddrRange var5 var2)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var2)))) (not (within var5 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main35 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var2)))) (not (<= 0 (+ (getInt (read var6 (nthAddrRange var5 var2))) (* (- 1) (getInt (read var6 (nthAddrRange var5 var3))))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (not (within var5 (nthAddrRange var5 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var6 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (not (within var5 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (not (is-O_Int (read var6 (nthAddrRange var5 var4)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (not (within var5 (nthAddrRange var5 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Heap)) (not (and (inv_main39 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var6 (nthAddrRange var5 var3))) (is-O_Int (read var6 (nthAddrRange var5 var4)))) (not (<= 0 (+ (getInt (read var6 (nthAddrRange var5 var3))) (* (- 1) (getInt (read var6 (nthAddrRange var5 var4))))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (not (is-O_Int (read var4 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (and (is-O_Int (read var4 (nthAddrRange var3 var1))) (not (is-O_Int (read var4 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var4 (nthAddrRange var3 var1))) (is-O_Int (read var4 (nthAddrRange var3 var0)))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main46 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var4 (nthAddrRange var3 var1))) (is-O_Int (read var4 (nthAddrRange var3 var0)))) (not (<= 0 (+ (getInt (read var4 (nthAddrRange var3 var0))) (* (- 1) (getInt (read var4 (nthAddrRange var3 var1))))))))))))
(check-sat)