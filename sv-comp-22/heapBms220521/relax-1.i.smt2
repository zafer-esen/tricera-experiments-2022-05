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
(declare-fun inv_main12 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main18 (Heap Int Int AddrRange AddrRange AddrRange Int AddrRange Int Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Int Int AddrRange AddrRange AddrRange Int AddrRange Int Int Int) Bool)
(declare-fun inv_main25 (Heap Int Int AddrRange AddrRange AddrRange Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main41 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main43 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main44 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main46 (Heap Int Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main52 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main54 (Heap Int Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main60 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main65 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main68 (Heap Int Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main72 (Heap Int Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main73 (Heap Int Int AddrRange AddrRange Int) Bool)
(declare-fun inv_main9 (Heap Int Int AddrRange AddrRange) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (not (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))) (inv_main65 var7 var6 var5 var4 var3 (+ var2 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2)))))))))) (inv_main65 var7 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ var4 (- 1)))) (not (<= 0 (+ var3 (- 1))))) (and (<= 0 (+ (+ var3 1) (* (- 1) var4))) (= var0 0))))) (inv_main65 var5 var4 var3 var2 var1 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main41 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_UInt (read var14 (nthAddrRange var11 var8))) (is-O_UInt (read var14 (nthAddrRange var11 var8)))) (and (and (and (and (and (and (= var7 (write var14 (nthAddrRange var11 var8) (O_UInt var6))) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main43 var7 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main52 var6 var5 var4 var3 var2 var1 var0) (is-O_UInt (read var6 (nthAddrRange var3 var0))))) (inv_main54 var6 var5 var4 var3 var2 var1 var0 (getUInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main44 var6 var5 var4 var3 var2 var1 var0) (is-O_UInt (read var6 (nthAddrRange var3 var0))))) (inv_main46 var6 var5 var4 var3 var2 var1 var0 (getUInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main43 var14 var13 var12 var11 var10 var9 var8) (and (= var7 var6) (and (and (not (<= 0 (+ (+ var6 (* (- 1) var7)) (- 1)))) (and (is-O_UInt (read var14 (nthAddrRange var10 var8))) (is-O_UInt (read var14 (nthAddrRange var10 var8))))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_UInt var4))) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var6 var9)) (= var7 var8)))))) (inv_main52 var5 var3 var2 var1 var0 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (is-O_UInt (read var6 (nthAddrRange var3 var0))))) (inv_main72 var6 var5 var4 var3 var2 var1 var0 (getUInt (read var6 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (= var2 0)) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))))))))) (inv_main12 var11 var10 var9 var8 var7 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1))) (= var0 1)))) (inv_main12 var9 var8 var7 var6 var5 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main18 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (or (not (<= 0 (+ (+ var3 (* (- 1) var1)) (- 1)))) (not (= var0 1))))) (inv_main12 var9 var8 var7 var6 var5 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main2 var13) (and (and (and (and (<= 0 (+ (+ var12 (* (- 1) (+ var11 1))) (- 1))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var12 var6)) (= var11 var7)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc var9 (O_Int var8) var7))))) (and (and (and (= var9 (newBatchHeap (batchAlloc var13 (O_Int var2) var1))) (= var6 var1)) (= var7 var0)) (= var4 (newAddrRange (batchAlloc var13 (O_Int var2) var1))))) (<= 0 var0)) (<= 0 var1)))) (inv_main12 var10 var12 var11 var5 var3 0))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main43 var14 var13 var12 var11 var10 var9 var8) (and (<= 0 (+ (+ var7 (* (- 1) var6)) (- 1))) (and (not (= var7 var6)) (and (and (not (<= 0 (+ (+ var6 (* (- 1) var7)) (- 1)))) (and (is-O_UInt (read var14 (nthAddrRange var10 var8))) (is-O_UInt (read var14 (nthAddrRange var10 var8))))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_UInt var4))) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var6 var9)) (= var7 var8))))))) (inv_main60 var5 var3 var2 var1 var0 var6 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (not (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))) (inv_main68 var7 var6 var5 var4 var3 (+ var2 1) (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var6 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (= var0 (getUInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2)))))))))) (inv_main68 var7 var6 var5 var4 var3 var2 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var3 (- 1)))) (and (<= 0 (+ (+ var3 1) (* (- 1) var4))) (= var0 0))))) (inv_main68 var5 var4 var3 var2 var1 0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main9 var5 var4 var3 var2 var1) (and (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var3 (- 1)))) (and (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))) (<= 0 var0))))) (inv_main41 var5 var4 var3 var2 var1 (+ var4 (- 1)) 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main9 var5 var4 var3 var2 var1) (and (and (<= 0 (+ var4 (- 1))) (<= 0 (+ var3 (- 1)))) (and (not (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1)))) (<= 0 var0))))) (inv_main41 var5 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var5 (* (- 1) (+ var0 1))) (- 1))) (<= 0 (+ (+ var4 (* (- 1) (+ var0 1))) (- 1)))) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1))))))))) (inv_main41 var6 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main46 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (<= 0 (+ (+ var7 (* (- 1) (+ var6 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var6 1))) (- 1)))) (and (and (not (= var4 0)) (is-O_UInt (read var15 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var3 var15) (= var7 var14)) (= var5 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var6 var9)) (or (and (= var8 (getUInt (read var15 (nthAddrRange var11 var9)))) (= var4 1)) (and (not (= var8 (getUInt (read var15 (nthAddrRange var11 var9))))) (= var4 0)))))))) (inv_main41 var3 var7 var5 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 AddrRange) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main54 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (<= 0 (+ (+ var7 (* (- 1) (+ var6 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var6 1))) (- 1)))) (and (and (not (= var4 0)) (is-O_UInt (read var15 (nthAddrRange var11 var9)))) (and (and (and (and (and (and (and (= var3 var15) (= var7 var14)) (= var5 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var6 var9)) (or (and (not (= var8 (getUInt (read var15 (nthAddrRange var11 var9))))) (= var4 1)) (and (= var8 (getUInt (read var15 (nthAddrRange var11 var9)))) (= var4 0)))))))) (inv_main41 var3 var7 var5 var2 var1 var0 (+ var6 1)))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main43 var14 var13 var12 var11 var10 var9 var8) (and (and (<= 0 (+ (+ var7 (* (- 1) (+ var6 1))) (- 1))) (<= 0 (+ (+ var5 (* (- 1) (+ var6 1))) (- 1)))) (and (not (<= 0 (+ (+ var6 (* (- 1) var4)) (- 1)))) (and (not (= var6 var4)) (and (and (not (<= 0 (+ (+ var4 (* (- 1) var6)) (- 1)))) (and (is-O_UInt (read var14 (nthAddrRange var10 var8))) (is-O_UInt (read var14 (nthAddrRange var10 var8))))) (and (and (and (and (and (and (= var3 (write var14 (nthAddrRange var10 var8) (O_UInt var2))) (= var7 var13)) (= var5 var12)) (= var1 var11)) (= var0 var10)) (= var4 var9)) (= var6 var8)))))))) (inv_main41 var3 var7 var5 var1 var0 var4 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (inv_main21 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var10 (nthAddrRange var5 var0))))) (inv_main25 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var10 (nthAddrRange var5 var0)))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (inv_main43 var14 var13 var12 var11 var10 var9 var8) (and (and (<= 0 (+ (+ var7 (* (- 1) var6)) (- 1))) (and (is-O_UInt (read var14 (nthAddrRange var10 var8))) (is-O_UInt (read var14 (nthAddrRange var10 var8))))) (and (and (and (and (and (and (= var5 (write var14 (nthAddrRange var10 var8) (O_UInt var4))) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var7 var9)) (= var6 var8))))) (inv_main44 var5 var3 var2 var1 var0 var7 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1))))) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))) (inv_main18 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (or (not (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1)))) (not (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1))))) (and (= var2 0) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))))) (inv_main18 var11 var10 var9 var8 var7 var6 var5 var4 var3 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main2 var13) (and (and (and (and (and (or (not (<= 0 (+ var12 (- 1)))) (not (<= 0 (+ var11 (- 1))))) (not (<= 0 (+ (+ var12 (* (- 1) (+ var11 1))) (- 1))))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var12 var6)) (= var11 var7)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc var9 (O_Int var8) var7))))) (and (and (and (= var9 (newBatchHeap (batchAlloc var13 (O_Int var2) var1))) (= var6 var1)) (= var7 var0)) (= var4 (newAddrRange (batchAlloc var13 (O_Int var2) var1))))) (<= 0 var0)) (<= 0 var1)))) (inv_main18 var10 var12 var11 var5 var3 var5 var12 var3 var11 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1)))) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))) (inv_main21 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (<= 0 (+ (+ var5 (* (- 1) (+ var1 1))) (- 1))) (<= 0 (+ (+ var3 (* (- 1) (+ var1 1))) (- 1)))) (and (= var2 0) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (= var0 (getInt (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2)))))))))))) (inv_main21 var11 var10 var9 var8 var7 var6 var5 var4 var3 1 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (inv_main2 var13) (and (and (and (and (and (and (<= 0 (+ var12 (- 1))) (<= 0 (+ var11 (- 1)))) (not (<= 0 (+ (+ var12 (* (- 1) (+ var11 1))) (- 1))))) (and (and (and (and (= var10 (newBatchHeap (batchAlloc var9 (O_Int var8) var7))) (= var12 var6)) (= var11 var7)) (= var5 var4)) (= var3 (newAddrRange (batchAlloc var9 (O_Int var8) var7))))) (and (and (and (= var9 (newBatchHeap (batchAlloc var13 (O_Int var2) var1))) (= var6 var1)) (= var7 var0)) (= var4 (newAddrRange (batchAlloc var13 (O_Int var2) var1))))) (<= 0 var0)) (<= 0 var1)))) (inv_main21 var10 var12 var11 var5 var3 var5 var12 var3 var11 0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main65 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1))))) (inv_main73 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main65 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var4 (* (- 1) var3)) (- 1)))))) (inv_main73 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main9 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main21 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var10 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main21 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var10 (nthAddrRange var5 var0))) (not (within var5 (nthAddrRange var5 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main25 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var11 (nthAddrRange var4 (+ var1 (* (- 1) var2))))) (not (within var4 (nthAddrRange var4 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 AddrRange) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main9 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var2 1) (* (- 1) var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main41 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main41 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main41 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (is-O_UInt (read var6 (nthAddrRange var3 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main43 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main43 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main43 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var2 var0))) (not (is-O_UInt (read var6 (nthAddrRange var2 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main44 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main44 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main46 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var7 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main46 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var7 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main52 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main52 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var7 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main54 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var7 (nthAddrRange var3 var1))) (not (within var3 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (not (within var3 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 (+ var0 (- 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))) (not (within var2 (nthAddrRange var2 (+ var0 (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main60 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (is-O_UInt (read var6 (nthAddrRange var2 (+ var0 (- 1)))))) (not (= (getUInt (read var6 (nthAddrRange var3 var0))) (getUInt (read var6 (nthAddrRange var2 (+ var0 (- 1))))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var6 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main68 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var6 (nthAddrRange var3 var0))) (not (within var3 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main72 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_UInt (read var7 (nthAddrRange var3 (+ var1 (* (- 1) var2))))) (not (within var3 (nthAddrRange var3 (+ var1 (* (- 1) var2))))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main73 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ var0 (- 1)) (- 1))))))))
(check-sat)