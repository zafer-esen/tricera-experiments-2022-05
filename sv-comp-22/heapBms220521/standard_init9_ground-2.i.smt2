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
(declare-fun inv_main10 (Heap AddrRange Int) Bool)
(declare-fun inv_main14 (Heap AddrRange Int) Bool)
(declare-fun inv_main18 (Heap AddrRange Int) Bool)
(declare-fun inv_main22 (Heap AddrRange Int) Bool)
(declare-fun inv_main26 (Heap AddrRange Int) Bool)
(declare-fun inv_main30 (Heap AddrRange Int) Bool)
(declare-fun inv_main34 (Heap AddrRange Int) Bool)
(declare-fun inv_main38 (Heap AddrRange Int) Bool)
(declare-fun inv_main4 (Heap AddrRange Int) Bool)
(declare-fun inv_main43 (Heap AddrRange Int Int) Bool)
(declare-fun inv_main6 (Heap AddrRange Int) Bool)
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Heap)) (or (not (and (= var3 emptyHeap) (and (= var2 (newBatchHeap (batchAlloc emptyHeap (O_Int var1) 100000))) (= var0 (newAddrRange (batchAlloc emptyHeap (O_Int var1) 100000)))))) (inv_main4 var2 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main34 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 49))) (= var0 var4)) (= var2 var3)))))) (inv_main34 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main30 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 48))) (= var0 var4)) (= var2 var3)))))) (inv_main34 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main6 var5 var4 var3) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var2 (write var5 (nthAddrRange var4 var3) (O_Int 42))) (= var1 var4)) (= var0 var3))))) (inv_main4 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main4 var2 var1 var0) (not (<= 0 (+ (+ 100000 (* (- 1) var0)) (- 1)))))) (inv_main10 var2 var1 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main10 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 43))) (= var0 var4)) (= var2 var3)))))) (inv_main10 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main38 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 50))) (= var0 var4)) (= var2 var3)))))) (inv_main38 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main34 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 49))) (= var0 var4)) (= var2 var3)))))) (inv_main38 var1 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main18 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 45))) (= var0 var4)) (= var2 var3)))))) (inv_main18 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main14 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 44))) (= var0 var4)) (= var2 var3)))))) (inv_main18 var1 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main30 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 48))) (= var0 var4)) (= var2 var3)))))) (inv_main30 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main26 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 47))) (= var0 var4)) (= var2 var3)))))) (inv_main30 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (and (inv_main4 var2 var1 var0) (<= 0 (+ (+ 100000 (* (- 1) var0)) (- 1))))) (inv_main6 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main22 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 46))) (= var0 var4)) (= var2 var3)))))) (inv_main22 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main18 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 45))) (= var0 var4)) (= var2 var3)))))) (inv_main22 var1 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main14 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 44))) (= var0 var4)) (= var2 var3)))))) (inv_main14 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main10 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 43))) (= var0 var4)) (= var2 var3)))))) (inv_main14 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (or (not (and (inv_main43 var3 var2 var1 var0) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var0 1))) (- 1))) (is-O_Int (read var3 (nthAddrRange var2 var0)))))) (inv_main43 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main38 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 50))) (= var0 var4)) (= var2 var3)))))) (inv_main43 var1 var0 (+ var2 1) 0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main26 var5 var4 var3) (and (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 47))) (= var0 var4)) (= var2 var3)))))) (inv_main26 var1 var0 (+ var2 1)))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main22 var5 var4 var3) (and (not (<= 0 (+ (+ 100000 (* (- 1) (+ var2 1))) (- 1)))) (and (and (is-O_Int (read var5 (nthAddrRange var4 var3))) (is-O_Int (read var5 (nthAddrRange var4 var3)))) (and (and (= var1 (write var5 (nthAddrRange var4 var3) (O_Int 46))) (= var0 var4)) (= var2 var3)))))) (inv_main26 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main14 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main26 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main26 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main26 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main30 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main30 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main30 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main34 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (not (is-O_Int (read var2 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (within var1 (nthAddrRange var1 var0))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (and (is-O_Int (read var2 (nthAddrRange var1 var0))) (not (is-O_Int (read var2 (nthAddrRange var1 var0)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main43 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main43 var3 var2 var1 var0) (not (within var2 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main43 var3 var2 var1 var0) (not (is-O_Int (read var3 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main43 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (within var2 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap)) (not (and (inv_main43 var3 var2 var1 var0) (and (is-O_Int (read var3 (nthAddrRange var2 var0))) (not (= (getInt (read var3 (nthAddrRange var2 var0))) 50)))))))
(check-sat)
