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
(declare-fun inv_main17 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main2 (Heap Int Int) Bool)
(declare-fun inv_main20 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main21 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main26 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main30 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main31 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main36 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main40 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main41 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main44 (Heap Int Int Int AddrRange Int) Bool)
(declare-fun inv_main46 (Heap Int Int Int AddrRange Int) Bool)
(assert (inv_main2 emptyHeap 0 100000))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main40 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))))) (inv_main44 var5 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main46 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var3 var10)) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (* (- 1) (getInt (read var12 (nthAddrRange var8 var9))))))))))) (inv_main44 var4 var6 var3 (+ var5 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main17 var11 var10 var9 var8 var7 var6) (and (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1))) (and (and (is-O_Int (read var11 (nthAddrRange var7 var8))) (is-O_Int (read var11 (nthAddrRange var7 var8)))) (and (and (and (and (and (= var3 (write var11 (nthAddrRange var7 var8) (O_Int 1))) (= var5 var10)) (= var2 var9)) (= var4 var8)) (= var1 var7)) (= var0 var6)))))) (inv_main17 var3 var5 var2 (+ var4 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main2 var14 var13 var12) (and (and (<= 0 (+ var11 (- 1))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var11 var7)) (= var6 var5)) (= var4 var3)) (= var2 (newAddrRange (batchAlloc var9 (O_Int var8) var7))))) (and (not (= var1 0)) (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (and (and (and (= var9 var14) (= var7 var0)) (= var5 var12)) (or (and (<= 0 (+ (+ var12 (* (- 1) var0)) (- 1))) (= var1 1)) (and (not (<= 0 (+ (+ var12 (* (- 1) var0)) (- 1)))) (= var1 0))))))))) (inv_main17 var10 var11 var6 0 var2 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main40 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var4 (- 1))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))))) (inv_main46 var5 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main46 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var3 var10)) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (* (- 1) (getInt (read var12 (nthAddrRange var8 var9))))))))))) (inv_main46 var4 var6 var3 (+ var5 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var4 (- 1))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))))) (inv_main26 var5 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main26 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var3 var10)) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (getInt (read var12 (nthAddrRange var8 var9)))))))))) (inv_main26 var4 var6 var3 (+ var5 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main21 var12 var11 var10 var9 var8 var7) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var6 var12) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (getInt (read var12 (nthAddrRange var8 var9))))))))) (inv_main20 var6 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main17 var11 var10 var9 var8 var7 var6) (and (not (<= 0 (+ (+ var5 (* (- 1) (+ var4 1))) (- 1)))) (and (and (is-O_Int (read var11 (nthAddrRange var7 var8))) (is-O_Int (read var11 (nthAddrRange var7 var8)))) (and (and (and (and (and (= var3 (write var11 (nthAddrRange var7 var8) (O_Int 1))) (= var5 var10)) (= var2 var9)) (= var4 var8)) (= var1 var7)) (= var0 var6)))))) (inv_main20 var3 var5 var2 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main2 var14 var13 var12) (and (and (not (<= 0 (+ var11 (- 1)))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var11 var7)) (= var6 var5)) (= var4 var3)) (= var2 (newAddrRange (batchAlloc var9 (O_Int var8) var7))))) (and (not (= var1 0)) (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (and (and (and (= var9 var14) (= var7 var0)) (= var5 var12)) (or (and (<= 0 (+ (+ var12 (* (- 1) var0)) (- 1))) (= var1 1)) (and (not (<= 0 (+ (+ var12 (* (- 1) var0)) (- 1)))) (= var1 0))))))))) (inv_main20 var10 var11 var6 0 var2 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main41 var12 var11 var10 var9 var8 var7) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var6 var12) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (* (- 1) (getInt (read var12 (nthAddrRange var8 var9)))))))))) (inv_main40 var6 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main30 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))))) (inv_main40 var5 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main36 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var3 var10)) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (* (- 1) (getInt (read var12 (nthAddrRange var8 var9))))))))))) (inv_main40 var4 var6 var3 0 var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))) (inv_main21 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main40 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))) (inv_main41 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main30 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))) (inv_main31 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main31 var12 var11 var10 var9 var8 var7) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var6 var12) (= var5 var11)) (= var4 var10)) (= var3 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (getInt (read var12 (nthAddrRange var8 var9))))))))) (inv_main30 var6 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))))) (inv_main30 var5 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main26 var12 var11 var10 var9 var8 var7) (and (not (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1)))) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var3 var10)) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (getInt (read var12 (nthAddrRange var8 var9)))))))))) (inv_main30 var4 var6 var3 0 var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main30 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var4 (- 1))) (not (<= 0 (+ (+ var4 (* (- 1) var2)) (- 1))))))) (inv_main36 var5 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (inv_main36 var12 var11 var10 var9 var8 var7) (and (<= 0 (+ (+ var6 (* (- 1) (+ var5 1))) (- 1))) (and (is-O_Int (read var12 (nthAddrRange var8 var9))) (and (and (and (and (and (and (= var4 var12) (= var6 var11)) (= var3 var10)) (= var5 var9)) (= var2 var8)) (= var1 var7)) (= var0 (+ var7 (* (- 1) (getInt (read var12 (nthAddrRange var8 var9))))))))))) (inv_main36 var4 var6 var3 (+ var5 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (is-O_Int (read var5 (nthAddrRange var1 var2)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main26 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main26 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main31 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main36 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main36 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main41 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main41 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main46 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var5 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main46 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var5 (nthAddrRange var1 var2))) (not (within var1 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main44 var5 var4 var3 var2 var1 var0) (not (= var0 0))))))
(check-sat)
