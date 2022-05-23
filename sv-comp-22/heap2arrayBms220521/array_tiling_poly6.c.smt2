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
(declare-fun inv_main15 (Heap Int Int AddrRange) Bool)
(declare-fun inv_main18 (Heap Int Int AddrRange) Bool)
(declare-fun inv_main19 (Heap Int Int AddrRange) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main24 (Heap Int Int AddrRange) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main21 var8 var7 var6 var5 var4) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 (writeHeap var8 (nthAddrRange var5 var6) (O_Int (+ var4 (* (* (- 1) var6) var6)))))) (is-O_Int (readHeap var8 (nthAddrRange var5 var6)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var6))))) (inv_main18 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main15 var7 var6 var5 var4) (= var0 var4)) (= var2 var5)) (= var3 var6)) (= var1 (writeHeap var7 (nthAddrRange var4 var5) (O_Int (* (+ var5 (* (- 1) 1)) (+ var5 1)))))) (is-O_Int (readHeap var7 (nthAddrRange var4 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var4 var5)))) (not (<= 0 (+ (+ (* (- 1) (+ var2 1)) var3) (* (- 1) 1)))))) (inv_main18 var1 var3 0 var0))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Heap)) (or (not (and (batchAllocHeapPostHeap emptyHeap var8 (O_Int var7) var6) (and (and (and (and (and (and (and (and (and (inv_main2 var10) (or (and (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (= var2 0)))) (= var6 var0)) (= var1 var10)) (not (= var2 0))) (= var3 (AddrRange (ite (<= 0 (+ var6 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var6))) (= var5 var4)) (= var9 var6)) true) (not (<= 0 (+ var9 (* (- 1) 1))))))) (inv_main18 var8 var9 0 var3))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main2 var10) (or (and (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (= var2 0)))) (= var6 var0)) (= var1 var10)) (not (= var2 0))) (= var3 (AddrRange (ite (<= 0 (+ var6 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var6))) (= var5 var4)) (= var9 var6)) true) (not (<= 0 (+ var9 (* (- 1) 1)))))) (batchAllocHeap emptyHeap emptyHeap (O_Int var7) var6 var6))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main18 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var1) var2) (* (- 1) 1))))) (inv_main19 var3 var2 var1 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main19 var3 var2 var1 var0) (is-O_Int (readHeap var3 (nthAddrRange var0 var1))))) (inv_main21 var3 var2 var1 var0 (getInt (readHeap var3 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (and (inv_main18 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var1) var2) (* (- 1) 1))))) (<= 0 (+ var2 (* (- 1) 1))))) (inv_main24 var3 var2 0 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (and (inv_main24 var3 var2 var1 var0) (is-O_Int (readHeap var3 (nthAddrRange var0 var1)))) (<= 0 (+ (+ (* (- 1) (+ var1 1)) var2) (* (- 1) 1))))) (inv_main24 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 AddrRange) (var1 Heap) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main15 var7 var6 var5 var4) (= var0 var4)) (= var2 var5)) (= var3 var6)) (= var1 (writeHeap var7 (nthAddrRange var4 var5) (O_Int (* (+ var5 (* (- 1) 1)) (+ var5 1)))))) (is-O_Int (readHeap var7 (nthAddrRange var4 var5)))) (is-O_Int (readHeap var7 (nthAddrRange var4 var5)))) (<= 0 (+ (+ (* (- 1) (+ var2 1)) var3) (* (- 1) 1))))) (inv_main15 var1 var3 (+ var2 1) var0))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Heap)) (or (not (and (batchAllocHeapPostHeap emptyHeap var8 (O_Int var7) var6) (and (and (and (and (and (and (and (and (and (inv_main2 var10) (or (and (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (= var2 0)))) (= var6 var0)) (= var1 var10)) (not (= var2 0))) (= var3 (AddrRange (ite (<= 0 (+ var6 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var6))) (= var5 var4)) (= var9 var6)) true) (<= 0 (+ var9 (* (- 1) 1)))))) (inv_main15 var8 var9 0 var3))))
(assert (forall ((var0 Int) (var1 Heap) (var2 Int) (var3 AddrRange) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main2 var10) (or (and (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1))) (= var2 1)) (and (not (<= 0 (+ (+ (* (- 1) 1) var0) (* (- 1) 1)))) (= var2 0)))) (= var6 var0)) (= var1 var10)) (not (= var2 0))) (= var3 (AddrRange (ite (<= 0 (+ var6 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var6))) (= var5 var4)) (= var9 var6)) true) (<= 0 (+ var9 (* (- 1) 1))))) (batchAllocHeap emptyHeap emptyHeap (O_Int var7) var6 var6))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main15 var3 var2 var1 var0) (not (is-O_Int (readHeap var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (and (inv_main15 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))) (is-O_Int (readHeap var3 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (and (inv_main15 var3 var2 var1 var0) (not (is-O_Int (readHeap var3 (nthAddrRange var0 var1))))) (is-O_Int (readHeap var3 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main19 var3 var2 var1 var0) (not (is-O_Int (readHeap var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (and (inv_main19 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))) (is-O_Int (readHeap var3 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main21 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main21 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main21 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (is-O_Int (readHeap var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (is-O_Int (readHeap var3 (nthAddrRange var0 var1))))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (and (inv_main24 var3 var2 var1 var0) (not (withinHeap var0 (nthAddrRange var0 var1)))) (is-O_Int (readHeap var3 (nthAddrRange var0 var1)))))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Heap)) (not (and (and (inv_main24 var3 var2 var1 var0) (not (= (getInt (readHeap var3 (nthAddrRange var0 var1))) (* (- 1) 1)))) (is-O_Int (readHeap var3 (nthAddrRange var0 var1)))))))
(check-sat)
