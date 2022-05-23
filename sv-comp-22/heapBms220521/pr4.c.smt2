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
(declare-fun inv_main2 (Heap Int) Bool)
(declare-fun inv_main28 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main33 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main34 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main36 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main37 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main39 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main40 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main41 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main42 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main44 (Heap Int Int Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main47 (Heap Int Int Int AddrRange Int Int Int Int Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main36 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (<= 0 (+ var8 (* (- 1) var7)))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))) (O_Int var11))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var8 var10)) (= var0 var9))))) (inv_main40 var6 var5 var7 var4 var3 var2 var1 var8 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main37 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (<= 0 (+ var8 (* (- 1) var7)))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))) (O_Int 0))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var8 var10)) (= var0 var9))))) (inv_main40 var6 var5 var7 var4 var3 var2 var1 var8 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main39 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (<= 0 (+ var8 (* (- 1) var7)))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))) (O_Int var10))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var8 var9))))) (inv_main42 var6 var5 var7 var4 var3 var2 var1 var0 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main40 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (<= 0 (+ var8 (* (- 1) var7)))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))) (O_Int 0))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var8 var9))))) (inv_main42 var6 var5 var7 var4 var3 var2 var1 var0 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int)) (or (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var3 (* (- 1) var6))) (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var7 (* (- 4) var9)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var7 (* (- 4) var9)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 4) var9)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 4) var9))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1))))) (<= 0 (+ var9 (* (- 1) var5))))))) (inv_main33 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main33 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (<= 0 (+ var8 (* (- 1) var7)))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))) (O_Int var12))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var8 var11)) (= var1 var10)) (= var0 var9))))) (inv_main37 var6 var5 var7 var4 var3 var2 var8 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main34 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (not (<= 0 (+ var8 (* (- 1) var7)))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))) (O_Int 0))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var8 var11)) (= var1 var10)) (= var0 var9))))) (inv_main37 var6 var5 var7 var4 var3 var2 var8 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main36 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (<= 0 (+ var8 (* (- 1) var7))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))) (O_Int var11))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var8 var10)) (= var0 var9))))) (inv_main39 var6 var5 var7 var4 var3 var2 var1 var8 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main37 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (<= 0 (+ var8 (* (- 1) var7))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 3))) (O_Int 0))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var8 var10)) (= var0 var9))))) (inv_main39 var6 var5 var7 var4 var3 var2 var1 var8 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main39 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (<= 0 (+ var8 (* (- 1) var7))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))) (O_Int var10))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var8 var9))))) (inv_main41 var6 var5 var7 var4 var3 var2 var1 var0 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main40 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (<= 0 (+ var8 (* (- 1) var7))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 2))) (O_Int 0))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var1 var11)) (= var0 var10)) (= var8 var9))))) (inv_main41 var6 var5 var7 var4 var3 var2 var1 var0 var8))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main33 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (<= 0 (+ var8 (* (- 1) var7))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))) (O_Int var12))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var8 var11)) (= var1 var10)) (= var0 var9))))) (inv_main36 var6 var5 var7 var4 var3 var2 var8 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main34 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (<= 0 (+ var8 (* (- 1) var7))) (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))))))) (and (and (and (and (and (and (and (and (= var6 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 4))) (O_Int 0))) (= var5 var16)) (= var7 var15)) (= var4 var14)) (= var3 var13)) (= var2 var12)) (= var8 var11)) (= var1 var10)) (= var0 var9))))) (inv_main36 var6 var5 var7 var4 var3 var2 var8 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int)) (or (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (not (<= 0 (+ var3 (* (- 1) var6)))) (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var7 (* (- 4) var9)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var7 (* (- 4) var9)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 4) var9)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 4) var9))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1))))) (<= 0 (+ var9 (* (- 1) var5))))))) (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int)) (or (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (<= 0 (+ var7 (- 1))) (not (or (not (and (and (and (<= 0 (+ (+ 4 (* (- 1) (+ var7 (* (- 4) var9)))) (- 1))) (<= 0 (+ (+ 4 (* 1 (+ var7 (* (- 4) var9)))) (- 1)))) (or (not (<= 0 (+ (+ var7 (* (- 4) var9)) (- 1)))) (<= 0 (+ var7 (- 1))))) (or (not (<= 0 (+ (* (- 1) (+ var7 (* (- 4) var9))) (- 1)))) (<= 0 (+ (* (- 1) var7) (- 1)))))) (<= 0 (+ var9 (* (- 1) var5)))))))) (inv_main44 var8 var7 var6 0 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main47 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ var8 (* (- 1) (+ var6 1))) (- 1))))) (inv_main44 var9 var8 var7 (+ var6 1) var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 AddrRange) (var15 Int) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (inv_main44 var18 var17 var16 var15 var14 var13 var12 var11 var10) (and (and (and (is-O_Int (read var18 (nthAddrRange var14 var15))) (not (<= 0 (+ (getInt (read var18 (nthAddrRange var14 var15))) (* (- 1) var16))))) (is-O_Int (read var18 (nthAddrRange var14 var15)))) (and (and (and (and (and (and (and (and (and (= var9 var18) (= var8 var17)) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (or (and (= (getInt (read var18 (nthAddrRange var14 var15))) 0) (= var0 1)) (and (not (= (getInt (read var18 (nthAddrRange var14 var15))) 0)) (= var0 0))))))) (inv_main47 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 var5))) (<= 0 (+ (getInt (read var8 (nthAddrRange var4 var5))) (* (- 1) var6)))))) (inv_main47 var8 var7 var6 var5 var4 var3 var2 var1 var0 1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main41 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 1))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 1)))))) (and (and (and (and (and (and (and (and (= var8 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 1))) (O_Int var9))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main28 var8 var7 var6 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (inv_main42 var17 var16 var15 var14 var13 var12 var11 var10 var9) (and (and (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 1))))) (is-O_Int (read var17 (nthAddrRange var13 (+ (* 4 var14) (- 1)))))) (and (and (and (and (and (and (and (and (= var8 (write var17 (nthAddrRange var13 (+ (* 4 var14) (- 1))) (O_Int 0))) (= var7 var16)) (= var6 var15)) (= var5 var14)) (= var4 var13)) (= var3 var12)) (= var2 var11)) (= var1 var10)) (= var0 var9))))) (inv_main28 var8 var7 var6 (+ var5 1) var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap) (var17 Heap) (var18 Int) (var19 Int) (var20 Heap) (var21 Int) (var22 Int) (var23 Int) (var24 Int) (var25 Int) (var26 Int)) (or (not (and (inv_main2 var20 var19) (and (and (and (and (not (= var18 0)) (and (and (and (and (and (and (and (and (and (= var17 var16) (= var15 var14)) (= var13 var12)) (= var11 var10)) (= var9 var8)) (= var7 5)) (= var6 7)) (= var5 3)) (= var4 1)) (or (and (and (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var21)) (- 1))) (<= 0 (+ (+ 4 (* 1 var21)) (- 1)))) (or (not (<= 0 (+ var21 (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) var21) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var14 (+ (* 4 var22) var21))) (= var21 0)) (= var18 1)) (and (not (or (not (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var23)) (- 1))) (<= 0 (+ (+ 4 (* 1 var23)) (- 1)))) (or (not (<= 0 (+ var23 (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) var23) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var14 (+ (* 4 var24) var23)))) (= var23 0))) (= var18 0))))) (and (and (and (and (and (<= 0 (+ (+ 4 (* (- 1) var25)) (- 1))) (<= 0 (+ (+ 4 (* 1 var25)) (- 1)))) (or (not (<= 0 (+ var25 (- 1)))) (<= 0 (+ var14 (- 1))))) (or (not (<= 0 (+ (* (- 1) var25) (- 1)))) (<= 0 (+ (* (- 1) var14) (- 1))))) (= var14 (+ (* 4 var26) var25))) (= var25 0))) (and (and (and (and (= var16 (newBatchHeap (batchAlloc emptyHeap (O_Int var3) var2))) (= var14 var2)) (= var12 var1)) (= var10 var0)) (= var8 (newAddrRange (batchAlloc emptyHeap (O_Int var3) var2))))) (<= 0 (+ (+ var2 (- 1)) (- 1)))))) (inv_main28 var17 var15 var13 1 var9 var7 var6 var5 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main33 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main33 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main33 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 4))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 4)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main37 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main37 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 3))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main37 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 3)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main39 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main39 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main39 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 2))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main40 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 2)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1))))) (not (within var4 (nthAddrRange var4 (+ (* 4 var5) (- 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1))))) (not (is-O_Int (read var8 (nthAddrRange var4 (+ (* 4 var5) (- 1)))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var4 (nthAddrRange var4 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (within var4 (nthAddrRange var4 var5)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (read var8 (nthAddrRange var4 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (is-O_Int (read var8 (nthAddrRange var4 var5))) (not (within var4 (nthAddrRange var4 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (is-O_Int (read var8 (nthAddrRange var4 var5))) (not (<= 0 (+ (getInt (read var8 (nthAddrRange var4 var5))) (* (- 1) var6))))) (not (is-O_Int (read var8 (nthAddrRange var4 var5)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main44 var8 var7 var6 var5 var4 var3 var2 var1 var0) (and (and (and (is-O_Int (read var8 (nthAddrRange var4 var5))) (not (<= 0 (+ (getInt (read var8 (nthAddrRange var4 var5))) (* (- 1) var6))))) (is-O_Int (read var8 (nthAddrRange var4 var5)))) (not (within var4 (nthAddrRange var4 var5))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (not (and (inv_main47 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (= var0 0)))))
(check-sat)
