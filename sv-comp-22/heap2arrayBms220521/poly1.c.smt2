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
(declare-fun inv_main16 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main19 (Heap Int Int Int AddrRange) Bool)
(declare-fun inv_main2 (Heap Int Int) Bool)
(assert (inv_main2 emptyHeap 0 100000))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main19 var4 var3 var2 var1 var0) (is-O_Int (readHeap var4 (nthAddrRange var0 var1)))) (<= 0 (+ (+ (* (- 1) (+ var1 1)) var3) (* (- 1) 1))))) (inv_main19 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main16 var9 var8 var7 var6 var5) (= var0 var5)) (= var3 var6)) (= var1 var7)) (= var4 var8)) (= var2 (writeHeap var9 (nthAddrRange var5 var6) (O_Int (* var6 var6))))) (is-O_Int (readHeap var9 (nthAddrRange var5 var6)))) (is-O_Int (readHeap var9 (nthAddrRange var5 var6)))) (not (<= 0 (+ (+ (* (- 1) (+ var3 1)) var4) (* (- 1) 1))))) (<= 0 (+ var4 (* (- 1) 1))))) (inv_main19 var2 var4 var1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (batchAllocHeapPostHeap var9 var10 (O_Int var8) var7) (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var14 var13 var12) (or (and (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1))) (= var1 1)) (and (not (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1)))) (= var1 0)))) (= var5 var12)) (= var7 var0)) (= var9 var14)) (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (not (= var1 0))) (= var2 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize var9) 1) (HeapSize var9)) var7))) (= var4 var3)) (= var6 var5)) (= var11 var7)) true) (not (<= 0 (+ var11 (* (- 1) 1))))) (<= 0 (+ var11 (* (- 1) 1)))))) (inv_main19 var10 var11 var6 0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var14 var13 var12) (or (and (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1))) (= var1 1)) (and (not (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1)))) (= var1 0)))) (= var5 var12)) (= var7 var0)) (= var9 var14)) (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (not (= var1 0))) (= var2 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize var9) 1) (HeapSize var9)) var7))) (= var4 var3)) (= var6 var5)) (= var11 var7)) true) (not (<= 0 (+ var11 (* (- 1) 1))))) (<= 0 (+ var11 (* (- 1) 1))))) (batchAllocHeap var9 var9 (O_Int var8) var7 var7))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main16 var9 var8 var7 var6 var5) (= var0 var5)) (= var3 var6)) (= var1 var7)) (= var4 var8)) (= var2 (writeHeap var9 (nthAddrRange var5 var6) (O_Int (* var6 var6))))) (is-O_Int (readHeap var9 (nthAddrRange var5 var6)))) (is-O_Int (readHeap var9 (nthAddrRange var5 var6)))) (<= 0 (+ (+ (* (- 1) (+ var3 1)) var4) (* (- 1) 1))))) (inv_main16 var2 var4 var1 (+ var3 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (batchAllocHeapPostHeap var9 var10 (O_Int var8) var7) (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var14 var13 var12) (or (and (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1))) (= var1 1)) (and (not (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1)))) (= var1 0)))) (= var5 var12)) (= var7 var0)) (= var9 var14)) (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (not (= var1 0))) (= var2 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize var9) 1) (HeapSize var9)) var7))) (= var4 var3)) (= var6 var5)) (= var11 var7)) true) (<= 0 (+ var11 (* (- 1) 1)))))) (inv_main16 var10 var11 var6 0 var2))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main2 var14 var13 var12) (or (and (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1))) (= var1 1)) (and (not (<= 0 (+ (+ (* (- 1) var0) var12) (* (- 1) 1)))) (= var1 0)))) (= var5 var12)) (= var7 var0)) (= var9 var14)) (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (not (= var1 0))) (= var2 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize var9) 1) (HeapSize var9)) var7))) (= var4 var3)) (= var6 var5)) (= var11 var7)) true) (<= 0 (+ var11 (* (- 1) 1))))) (batchAllocHeap var9 var9 (O_Int var8) var7 var7))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main16 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main16 var4 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))) (is-O_Int (readHeap var4 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main16 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var0 var1))))) (is-O_Int (readHeap var4 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main19 var4 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))) (is-O_Int (readHeap var4 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main19 var4 var3 var2 var1 var0) (not (= (getInt (readHeap var4 (nthAddrRange var0 var1))) (* var1 var1)))) (is-O_Int (readHeap var4 (nthAddrRange var0 var1)))))))
(check-sat)
