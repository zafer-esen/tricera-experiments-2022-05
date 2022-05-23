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
(declare-fun inv_main2 (Heap Int Int) Bool)
(declare-fun inv_main29 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main40 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main41 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main49 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main50 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main58 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main59 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main66 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main67 (Heap Int Int Int Int AddrRange Int Int) Bool)
(declare-fun inv_main69 (Heap Int Int Int Int AddrRange Int Int) Bool)
(assert (inv_main2 emptyHeap 0 100000))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int)) (or (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1) (and (= var0 var2) (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var7 (* (- 4) var9)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var7 (* (- 4) var9)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 4) var9)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 4) var9))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1))))) (<= 0 (+ var9 (* (- 1) var5))))))) (inv_main41 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main49 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))) (O_Int var12))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main58 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main50 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))) (O_Int var9))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main58 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main40 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))) (O_Int var12))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main49 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main41 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))) (O_Int var9))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main49 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int)) (or (not (and (inv_main29 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var6 (- 1))) (not (or (not (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var6 (* (- 4) var8)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var6 (* (- 4) var8)))) (- 1)))) (or (not (<= 0 (+ (+ var6 (* (- 4) var8)) (- 1)))) (<= 0 (+ var6 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var6 (* (- 4) var8))) (- 1)))) (<= 0 (+ (* (- 1) var6) (- 1)))))) (<= 0 (+ var8 (* (- 1) var4)))))))) (inv_main69 var7 var6 var5 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var6 (* (- 1) (+ var4 1))) (- 1))) (is-O_Int (read var7 (nthAddrRange var2 var4)))))) (inv_main69 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main49 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (= var8 var7) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))) (O_Int var12))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main59 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main50 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (= var8 var7) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 3))) (O_Int var9))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main59 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int)) (or (not (and (inv_main29 var8 var7 var6 var5 var4 var3 var2 var1) (and (not (= var0 var2)) (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var7 (* (- 4) var9)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var7 (* (- 4) var9)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 4) var9)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 4) var9))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1))))) (<= 0 (+ var9 (* (- 1) var5))))))) (inv_main40 var8 var7 var6 var5 var0 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main66 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_Int (read var15 (nthAddrRange var10 (+ (* 4 var12) (- 1))))) (is-O_Int (read var15 (nthAddrRange var10 (+ (* 4 var12) (- 1)))))) (and (and (and (and (and (and (and (= var7 (write var15 (nthAddrRange var10 (+ (* 4 var12) (- 1))) (O_Int var11))) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main29 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (inv_main67 var15 var14 var13 var12 var11 var10 var9 var8) (and (and (is-O_Int (read var15 (nthAddrRange var10 (+ (* 4 var12) (- 1))))) (is-O_Int (read var15 (nthAddrRange var10 (+ (* 4 var12) (- 1)))))) (and (and (and (and (and (and (and (= var7 (write var15 (nthAddrRange var10 (+ (* 4 var12) (- 1))) (O_Int var8))) (= var6 var14)) (= var5 var13)) (= var4 var12)) (= var3 var11)) (= var2 var10)) (= var1 var9)) (= var0 var8))))) (inv_main29 var7 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap) (var21 Heap) (var22 Int) (var23 Int) (var24 Int) (var25 Heap) (var26 Int) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Int)) (or (not (and (inv_main2 var25 var24 var23) (and (and (and (and (not (= var22 0)) (and (and (and (and (and (and (and (and (= var21 var20) (= var19 var18)) (= var17 var16)) (= var15 var14)) (= var13 var12)) (= var11 var10)) (= var9 0)) (= var8 10)) (or (and (and (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var26)) (- 1))) (<= 0 (+ (+ 4 (* 1 var26)) (- 1)))) (or (not (<= 0 (+ var26 (- 1)))) (<= 0 (+ var18 (- 1))))) (or (not (<= 0 (+ (* (- 1) var26) (- 1)))) (<= 0 (+ (* (- 1) var18) (- 1))))) (= var18 (+ (* 4 var27) var26))) (= var26 0)) (= var22 1)) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var28)) (- 1))) (<= 0 (+ (+ 4 (* 1 var28)) (- 1)))) (or (not (<= 0 (+ var28 (- 1)))) (<= 0 (+ var18 (- 1))))) (or (not (<= 0 (+ (* (- 1) var28) (- 1)))) (<= 0 (+ (* (- 1) var18) (- 1))))) (= var18 (+ (* 4 var29) var28)))) (= var28 0))) (= var22 0))))) (and (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var30)) (- 1))) (<= 0 (+ (+ 4 (* 1 var30)) (- 1)))) (or (not (<= 0 (+ var30 (- 1)))) (<= 0 (+ var18 (- 1))))) (or (not (<= 0 (+ (* (- 1) var30) (- 1)))) (<= 0 (+ (* (- 1) var18) (- 1))))) (= var18 (+ (* 4 var31) var30))) (= var30 0))) (and (and (and (and (and (= var20 (newBatchHeap (batchAlloc var7 (O_Int var6) var5))) (= var18 var5)) (= var16 var4)) (= var14 var3)) (= var12 var2)) (= var10 (newAddrRange (batchAlloc var7 (O_Int var6) var5))))) (and (not (= var1 0)) (and (<= 0 (+ (+ var0 (- 1)) (- 1))) (and (and (and (= var7 var25) (= var5 var0)) (= var4 var23)) (or (and (<= 0 (+ (+ var23 (* (- 1) var0)) (- 1))) (= var1 1)) (and (not (<= 0 (+ (+ var23 (* (- 1) var0)) (- 1)))) (= var1 0))))))))) (inv_main29 var21 var19 var17 1 var13 var11 var9 var8))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main40 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (= var8 var7) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))) (O_Int var12))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main50 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main41 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (= var8 var7) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 4))) (O_Int var9))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main50 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main58 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))) (O_Int var12))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main66 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main59 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (= var8 var7)) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))) (O_Int var9))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main66 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main58 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (= var8 var7) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))) (O_Int var12))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main67 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 AddrRange) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (inv_main59 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (= var8 var7) (and (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))) (is-O_Int (read var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))))))) (and (and (and (and (and (and (and (= var6 (write var16 (nthAddrRange var11 (+ (* 4 var13) (- 2))) (O_Int var9))) (= var5 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var7 var10)) (= var0 var9))))) (inv_main67 var6 var5 var4 var3 var8 var1 var7 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main40 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main41 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 4)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main49 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main49 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main49 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main50 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main50 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main50 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 3)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main58 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main58 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main58 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 2)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main66 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main66 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main66 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main67 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main67 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1))))) (not (within var2 (nthAddrRange var2 (+ (* 4 var4) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main67 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1))))) (not (is-O_Int (read var7 (nthAddrRange var2 (+ (* 4 var4) (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var7 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 var4))) (not (within var2 (nthAddrRange var2 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var7 (nthAddrRange var2 var4))) (= (getInt (read var7 (nthAddrRange var2 var4))) var1))))))
(check-sat)
