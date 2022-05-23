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
(declare-fun inv_main16 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Heap Addr Int AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main26 (Heap Addr Int AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 AddrRange) (var16 Int) (var17 Addr) (var18 Heap)) (or (not (and (inv_main16 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (is-O_Int (read var18 (nthAddrRange var15 var13))) (and (and (and (and (and (and (and (and (and (= var9 var18) (= var8 var17)) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 (getInt (read var18 (nthAddrRange var15 var13)))))))) (inv_main23 var9 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var4))) (is-O_Int (read var9 (nthAddrRange var6 var4)))))) (inv_main25 (write var9 (nthAddrRange var6 var4) (O_Int var0)) var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var8 (nthAddrRange var5 var2))))) (inv_main22 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var8 (nthAddrRange var5 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (read var8 (nthAddrRange var5 var1))))) (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (read var8 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var5 (* (- 1) (+ var3 1))) (- 1))) (and (is-O_Int (read var9 (nthAddrRange var6 var2))) (<= 0 (+ (+ (getInt (read var9 (nthAddrRange var6 var2))) (* (- 1) var0)) (- 1))))))) (inv_main18 var9 var8 var7 var6 var5 var4 (+ var3 1) var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ (+ var5 (* (- 1) (+ var3 1))) (- 1))) (and (is-O_Int (read var9 (nthAddrRange var6 var2))) (not (<= 0 (+ (+ (getInt (read var9 (nthAddrRange var6 var2))) (* (- 1) var0)) (- 1)))))))) (inv_main18 var9 var8 var7 var6 var5 var4 (+ var3 1) var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Addr) (var15 Heap)) (or (not (and (inv_main25 var15 var14 var13 var12 var11 var10 var9 var8 var7) (and (and (<= 0 (+ (+ var6 (* (- 1) (+ (+ var5 1) 1))) (- 1))) (<= 0 (+ (+ (+ var6 (- 1)) (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var15 (nthAddrRange var12 var8))) (is-O_Int (read var15 (nthAddrRange var12 var8)))) (and (and (and (and (and (= var4 (write var15 (nthAddrRange var12 var8) (O_Int var7))) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var6 var11)) (= var5 var10)))))) (inv_main18 var4 var3 var2 var1 var6 (+ var5 1) (+ (+ var5 1) 1) (+ var5 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main3 var3 var2) (and (<= 0 (+ (+ var1 (- 1)) (- 1))) (<= 0 (+ (+ var1 (- 1)) (- 1)))))) (inv_main18 var3 var2 var1 var2 var1 0 1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var5 (* (- 1) (+ var3 1))) (- 1)))) (and (is-O_Int (read var9 (nthAddrRange var6 var2))) (<= 0 (+ (+ (getInt (read var9 (nthAddrRange var6 var2))) (* (- 1) var0)) (- 1))))))) (inv_main16 var9 var8 var7 var6 var5 var4 (+ var3 1) var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ (+ var5 (* (- 1) (+ var3 1))) (- 1)))) (and (is-O_Int (read var9 (nthAddrRange var6 var2))) (not (<= 0 (+ (+ (getInt (read var9 (nthAddrRange var6 var2))) (* (- 1) var0)) (- 1)))))))) (inv_main16 var9 var8 var7 var6 var5 var4 (+ var3 1) var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Addr) (var15 Heap)) (or (not (and (inv_main25 var15 var14 var13 var12 var11 var10 var9 var8 var7) (and (and (not (<= 0 (+ (+ var6 (* (- 1) (+ (+ var5 1) 1))) (- 1)))) (<= 0 (+ (+ (+ var6 (- 1)) (* (- 1) (+ var5 1))) (- 1)))) (and (and (is-O_Int (read var15 (nthAddrRange var12 var8))) (is-O_Int (read var15 (nthAddrRange var12 var8)))) (and (and (and (and (and (= var4 (write var15 (nthAddrRange var12 var8) (O_Int var7))) (= var3 var14)) (= var2 var13)) (= var1 var12)) (= var6 var11)) (= var5 var10)))))) (inv_main16 var4 var3 var2 var1 var6 (+ var5 1) (+ (+ var5 1) 1) (+ var5 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main3 var3 var2) (and (not (<= 0 (+ (+ var1 (- 1)) (- 1)))) (<= 0 (+ (+ var1 (- 1)) (- 1)))))) (inv_main16 var3 var2 var1 var2 var1 0 1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var2))) (not (within var5 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var6 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var2))) (not (within var6 (nthAddrRange var6 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var3))) (not (within var5 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var1))) (not (within var5 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var9 (nthAddrRange var6 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var4))) (not (within var6 (nthAddrRange var6 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var9 (nthAddrRange var6 var4))) (not (is-O_Int (read var9 (nthAddrRange var6 var4)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var1))) (not (within var5 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var5 var1))) (not (is-O_Int (read var8 (nthAddrRange var5 var1)))))))))
(check-sat)
