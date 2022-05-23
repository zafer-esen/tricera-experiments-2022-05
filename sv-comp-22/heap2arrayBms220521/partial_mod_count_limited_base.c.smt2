(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status sat)
;===============================================================================
; Encoding of Heap sorts and operations
;-------------------------------------------------------------------------------
(define-sort Addr() Int)
(declare-datatypes ((AddrRange 0))
                   (((AddrRange (AddrRangeStart Addr) (AddrRangeSize Int)))))

(declare-datatypes ((HeapObject 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (defObj))))
(declare-datatypes ((BatchAllocResHeap 0) (AllocResHeap 0) (Heap 0))
                   (((BatchAllocResHeap   (newBatchHeap Heap) (newAddrRange AddrRange)))
                   ((AllocResHeap   (newHeap Heap) (newAddr Addr)))
                    ((HeapCtor (HeapSize Int)
                               (HeapContents (Array Addr HeapObject))))))
(define-fun nullAddr  () Addr 0)
(define-fun validHeap     ((h Heap) (p Addr)) Bool
  (and (>= (HeapSize h) p) (> p 0)))
(define-fun emptyHeap () Heap (
  HeapCtor 0 (( as const (Array Addr HeapObject)) defObj)))
(define-fun readHeap ((h Heap) (p Addr)) HeapObject
  (ite (validHeap h p)
       (select (HeapContents h) p)
       defObj))
(define-fun writeHeap ((h Heap) (p Addr) (o HeapObject)) Heap
  (ite (validHeap h p)
       (HeapCtor (HeapSize h) (store (HeapContents h) p o))
       h))
(define-fun allocHeap   ((h Heap) (o HeapObject)) AllocResHeap
  (AllocResHeap (HeapCtor (+ 1 (HeapSize h))
                    (store (HeapContents h) (+ 1 (HeapSize h)) o))
          (+ 1 (HeapSize h))))
(define-fun Heap-eq     ((h1 Heap) (h2 Heap)) Bool
  (forall ((p Addr))
          (and (= (validHeap h1 p) (validHeap h2 p))
               (= (readHeap h1 p) (readHeap h2 p)))))
(define-fun nthAddrRange((ar AddrRange) (n Int)) Addr
  (ite (and (>= n 0) (< n (AddrRangeSize ar)))
       (+ (AddrRangeStart ar) n)
       nullAddr))
(define-fun withinHeap ((ar AddrRange ) (p Addr)) Bool
  (and (>= p (AddrRangeStart ar)) (< p (+ (AddrRangeStart ar) (AddrRangeSize ar)))))

(declare-fun batchAllocHeap     (Heap Heap HeapObject Int Int) Bool)
(declare-fun batchAllocPostHeap (Heap Heap HeapObject Int) Bool)

(assert (forall ((h1 Heap) (h2 Heap) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (> n2 0) (batchAllocHeap h1 h2 o n1 n2))
                   (batchAllocHeap h1 (newHeap (allocHeap h2 o)) o n1 (- n2 1)))))
(assert (forall ((h1 Heap) (h2 Heap) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (<= n2 0) (batchAllocHeap h1 h2 o n1 n2))
                   (batchAllocPostHeap h1 h2 o n1))))

(declare-fun batchWriteHeap     (Heap Heap Addr Addr HeapObject Int Int) Bool)
(declare-fun batchWritePostHeap (Heap Heap Addr HeapObject Int) Bool)

(assert (forall ((h1 Heap) (h2 Heap) (a1 Addr) (a2 Addr) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (> n2 0) (batchWriteHeap h1 h2 a1 a2 o n1 n2))
                   (batchWriteHeap h1 (writeHeap h2 a2 o) a1 (+ a2 1) o n1 (- n2 1)))))
(assert (forall ((h1 Heap) (h2 Heap) (a1 Addr) (a2 Addr) (o HeapObject) (n1 Int) (n2 Int))
                (=> (and (<= n2 0) (batchWriteHeap h1 h2 a1 a2 o n1 n2))
                   (batchWritePostHeap h1 h2 a1 o n1))))

;===============================================================================
(declare-fun inv_main14 (Heap Int Int Int Int AddrRange Int) Bool)
(declare-fun inv_main17 (Heap Int Int Int Int AddrRange Int) Bool)
(declare-fun inv_main18 (Heap Int Int Int Int AddrRange Int) Bool)
(declare-fun inv_main26 (Heap Int Int Int Int AddrRange Int) Bool)
(declare-fun inv_main28 (Heap Int Int Int Int AddrRange Int) Bool)
(declare-fun inv_main3 (Heap Int Int Int Int AddrRange) Bool)
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (= var3 emptyHeap) (= var2 1000000))) (inv_main3 (newBatchHeap (batchAllocHeap emptyHeap (O_Int var1) var2)) var2 var0 0 0 (AddrRange (ite (<= 0 (+ var2 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var2)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1))))) (inv_main26 var6 var5 (+ var4 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main17 var14 var13 var12 var11 var10 var9 var8) (= var5 (getInt (readHeap var14 (nthAddrRange var9 var12))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var6 var12)) (= var7 var13)) (= var4 var14)) (is-O_Int (readHeap var14 (nthAddrRange var9 var12)))) (= var5 0)) (not (<= 0 (+ (+ (* (- 1) (+ var6 1)) var7) (* (- 1) 1))))) (<= 0 (+ var7 (* (- 1) 1))))) (inv_main26 var4 var7 0 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main17 var14 var13 var12 var11 var10 var9 var8) (= var5 (getInt (readHeap var14 (nthAddrRange var9 var12))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var6 var12)) (= var7 var13)) (= var4 var14)) (is-O_Int (readHeap var14 (nthAddrRange var9 var12)))) (not (= var5 0))) (not (<= 0 (+ (+ (* (- 1) (+ var6 1)) var7) (* (- 1) 1))))) (<= 0 (+ var7 (* (- 1) 1))))) (inv_main26 var4 var7 0 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main3 var14 var13 var12 var11 var10 var9) (or (and (<= 0 (+ var0 (* (- 1) 1))) (= var7 1)) (and (not (<= 0 (+ var0 (* (- 1) 1)))) (= var7 0)))) (= var1 var0)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var8 var13)) (= var6 var14)) (not (= var7 0))) (not (<= 0 (+ var8 (* (- 1) 1))))) (<= 0 (+ var8 (* (- 1) 1))))) (inv_main26 var6 var8 0 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main17 var14 var13 var12 var11 var10 var9 var8) (= var5 (getInt (readHeap var14 (nthAddrRange var9 var12))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var6 var12)) (= var7 var13)) (= var4 var14)) (is-O_Int (readHeap var14 (nthAddrRange var9 var12)))) (= var5 0)) (<= 0 (+ (+ (* (- 1) (+ var6 1)) var7) (* (- 1) 1))))) (inv_main14 var4 var7 (+ var6 1) var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main17 var14 var13 var12 var11 var10 var9 var8) (= var5 (getInt (readHeap var14 (nthAddrRange var9 var12))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var6 var12)) (= var7 var13)) (= var4 var14)) (is-O_Int (readHeap var14 (nthAddrRange var9 var12)))) (not (= var5 0))) (<= 0 (+ (+ (* (- 1) (+ var6 1)) var7) (* (- 1) 1))))) (inv_main14 var4 var7 (+ var6 1) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main3 var14 var13 var12 var11 var10 var9) (or (and (<= 0 (+ var0 (* (- 1) 1))) (= var7 1)) (and (not (<= 0 (+ var0 (* (- 1) 1)))) (= var7 0)))) (= var1 var0)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var8 var13)) (= var6 var14)) (not (= var7 0))) (<= 0 (+ var8 (* (- 1) 1))))) (inv_main14 var6 var8 0 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main26 var14 var13 var12 var11 var10 var9 var8) (= var7 (getInt (readHeap var14 (nthAddrRange var9 var12))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (is-O_Int (readHeap var14 (nthAddrRange var9 var12)))) (= var7 0))) (inv_main28 var6 var5 var4 (+ var3 1) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main26 var14 var13 var12 var11 var10 var9 var8) (= var7 (getInt (readHeap var14 (nthAddrRange var9 var12))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (is-O_Int (readHeap var14 (nthAddrRange var9 var12)))) (not (= var7 0)))) (inv_main28 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap) (var14 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main14 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var4 var9)) (= var2 var10)) (= var6 var11)) (= var5 var12)) (= var3 (writeHeap var13 (nthAddrRange var8 var11) (O_Int (+ var11 1))))) (is-O_Int (readHeap var13 (nthAddrRange var8 var11)))) (is-O_Int (readHeap var13 (nthAddrRange var8 var11)))) (<= 0 (+ (+ (* (- 1) var4) 1) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) var14) var6) (* (- 1) 1)))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var14))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var14) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var14))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var14))) 2) (* (- 1) 1))))) (inv_main18 var3 var5 var6 var2 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int)) (or (or (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))) (inv_main17 (writeHeap var6 (nthAddrRange var1 var4) (O_Int var7)) var5 var4 var3 var2 var1 var0)) (not (and (and (and (and (or (not (<= 0 (+ (* (- 1) var7) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var4) (* (- 1) 1)))) (or (not (<= 0 (+ var7 (* (- 1) 1)))) (<= 0 (+ var4 (* (- 1) 1))))) (or (and (<= 0 var0) (<= 0 (+ (+ (* 1 var7) var0) (* (- 1) 1)))) (and (not (<= 0 var0)) (<= 0 (+ (+ (* 1 var7) (* (- 1) var0)) (* (- 1) 1)))))) (or (and (<= 0 var0) (<= 0 (+ (+ (* (- 1) var7) var0) (* (- 1) 1)))) (and (not (<= 0 var0)) (<= 0 (+ (+ (* (- 1) var7) (* (- 1) var0)) (* (- 1) 1)))))) (= var4 (+ (* var8 var0) var7)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap) (var14 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main14 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var4 var9)) (= var2 var10)) (= var6 var11)) (= var5 var12)) (= var3 (writeHeap var13 (nthAddrRange var8 var11) (O_Int (+ var11 1))))) (is-O_Int (readHeap var13 (nthAddrRange var8 var11)))) (is-O_Int (readHeap var13 (nthAddrRange var8 var11)))) (or (not (or (not (and (and (and (or (not (<= 0 (+ (+ (* (- 2) var14) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1)))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var14))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var14))) 2) (* (- 1) 1)))) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var14))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1)))))) (<= 0 (+ (+ (* (- 1) var14) var6) (* (- 1) 1))))) (not (<= 0 (+ (+ (* (- 1) var4) 1) (* (- 1) 1))))))) (inv_main17 var3 var5 var6 var2 var4 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var4)))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main14 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var4)))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main17 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var4)))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var1 var4))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main26 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var4)))) (is-O_Int (readHeap var6 (nthAddrRange var1 var4)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main28 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var3) 2) (* (- 1) 1))))))))
(check-sat)
