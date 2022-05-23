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
(declare-fun inv_main17 (Heap Int Int AddrRange Int Int) Bool)
(declare-fun inv_main19 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main2 (Heap Int) Bool)
(declare-fun inv_main20 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main25 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main29 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main30 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main35 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main39 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main40 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main45 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main49 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main50 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main53 (Heap Int Int AddrRange Int) Bool)
(declare-fun inv_main55 (Heap Int Int AddrRange Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main50 var10 var9 var8 var7 var6) (= var0 (+ var6 (* (- 1) (getInt (readHeap var10 (nthAddrRange var7 var8))))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8))))) (inv_main49 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main39 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (not (<= 0 (+ var3 (* (- 1) 1)))))) (inv_main49 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main45 var10 var9 var8 var7 var6) (= var0 (+ var6 (* (- 1) (getInt (readHeap var10 (nthAddrRange var7 var8))))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (not (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1)))))) (inv_main49 var3 var5 0 var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main29 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (<= 0 (+ var3 (* (- 1) 1))))) (inv_main35 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main35 var10 var9 var8 var7 var6) (= var0 (+ var6 (getInt (readHeap var10 (nthAddrRange var7 var8)))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1))))) (inv_main35 var3 var5 (+ var4 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main49 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (<= 0 (+ var3 (* (- 1) 1))))) (inv_main55 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main55 var10 var9 var8 var7 var6) (= var0 (+ var6 (* (- 1) (getInt (readHeap var10 (nthAddrRange var7 var8))))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1))))) (inv_main55 var3 var5 (+ var4 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main19 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (inv_main20 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main30 var10 var9 var8 var7 var6) (= var0 (+ var6 (getInt (readHeap var10 (nthAddrRange var7 var8)))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8))))) (inv_main29 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main19 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (not (<= 0 (+ var3 (* (- 1) 1)))))) (inv_main29 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main25 var10 var9 var8 var7 var6) (= var0 (+ var6 (getInt (readHeap var10 (nthAddrRange var7 var8)))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (not (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1)))))) (inv_main29 var3 var5 0 var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main29 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (inv_main30 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main49 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (not (<= 0 (+ var3 (* (- 1) 1)))))) (inv_main53 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main55 var10 var9 var8 var7 var6) (= var0 (+ var6 (* (- 1) (getInt (readHeap var10 (nthAddrRange var7 var8))))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (not (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1)))))) (inv_main53 var3 var5 (+ var4 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main40 var10 var9 var8 var7 var6) (= var0 (+ var6 (* (- 1) (getInt (readHeap var10 (nthAddrRange var7 var8))))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8))))) (inv_main39 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main29 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (not (<= 0 (+ var3 (* (- 1) 1)))))) (inv_main39 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main35 var10 var9 var8 var7 var6) (= var0 (+ var6 (getInt (readHeap var10 (nthAddrRange var7 var8)))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (not (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1)))))) (inv_main39 var3 var5 0 var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main49 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (inv_main50 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (inv_main39 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (inv_main40 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main39 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (<= 0 (+ var3 (* (- 1) 1))))) (inv_main45 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main45 var10 var9 var8 var7 var6) (= var0 (+ var6 (* (- 1) (getInt (readHeap var10 (nthAddrRange var7 var8))))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1))))) (inv_main45 var3 var5 (+ var4 1) var2 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main17 var12 var11 var10 var9 var8 var7) (= var5 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var6 var11)) (= var4 (writeHeap var12 (nthAddrRange var9 var7) (O_Int var3)))) (is-O_Int (readHeap var12 (nthAddrRange var9 var7)))) (is-O_Int (readHeap var12 (nthAddrRange var9 var7)))) (not (<= 0 (+ (+ (* (- 1) (+ var5 1)) var6) (* (- 1) 1)))))) (inv_main19 var4 var6 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main20 var10 var9 var8 var7 var6) (= var0 (+ var6 (getInt (readHeap var10 (nthAddrRange var7 var8)))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8))))) (inv_main19 var5 var4 (+ var3 1) var2 var0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (batchAllocHeapPostHeap emptyHeap var5 (O_Int var4) var3) (and (and (and (and (and (and (inv_main2 var8 var7) (<= 0 (+ (+ (* (- 1) 1) var3) (* (- 1) 1)))) (= var0 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var2 var1)) (= var6 var3)) true) (not (<= 0 (+ var6 (* (- 1) 1))))))) (inv_main19 var5 var6 0 var0 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main2 var8 var7) (<= 0 (+ (+ (* (- 1) 1) var3) (* (- 1) 1)))) (= var0 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var2 var1)) (= var6 var3)) true) (not (<= 0 (+ var6 (* (- 1) 1)))))) (batchAllocHeap emptyHeap emptyHeap (O_Int var4) var3 var3))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main17 var12 var11 var10 var9 var8 var7) (= var5 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var6 var11)) (= var4 (writeHeap var12 (nthAddrRange var9 var7) (O_Int var3)))) (is-O_Int (readHeap var12 (nthAddrRange var9 var7)))) (is-O_Int (readHeap var12 (nthAddrRange var9 var7)))) (<= 0 (+ (+ (* (- 1) (+ var5 1)) var6) (* (- 1) 1))))) (inv_main17 var4 var6 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (batchAllocHeapPostHeap emptyHeap var5 (O_Int var4) var3) (and (and (and (and (and (and (inv_main2 var8 var7) (<= 0 (+ (+ (* (- 1) 1) var3) (* (- 1) 1)))) (= var0 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var2 var1)) (= var6 var3)) true) (<= 0 (+ var6 (* (- 1) 1)))))) (inv_main17 var5 var6 var2 var0 0 0))))
(assert (forall ((var0 AddrRange) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main2 var8 var7) (<= 0 (+ (+ (* (- 1) 1) var3) (* (- 1) 1)))) (= var0 (AddrRange (ite (<= 0 (+ var3 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var3))) (= var2 var1)) (= var6 var3)) true) (<= 0 (+ var6 (* (- 1) 1))))) (batchAllocHeap emptyHeap emptyHeap (O_Int var4) var3 var3))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main19 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var2) var3) (* (- 1) 1))))) (<= 0 (+ var3 (* (- 1) 1))))) (inv_main25 var4 var3 0 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 AddrRange) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main25 var10 var9 var8 var7 var6) (= var0 (+ var6 (getInt (readHeap var10 (nthAddrRange var7 var8)))))) (= var1 var6)) (= var2 var7)) (= var4 var8)) (= var5 var9)) (= var3 var10)) (is-O_Int (readHeap var10 (nthAddrRange var7 var8)))) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1))))) (inv_main25 var3 var5 (+ var4 1) var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main17 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var2 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (and (inv_main17 var5 var4 var3 var2 var1 var0) (not (withinHeap var2 (nthAddrRange var2 var0)))) (is-O_Int (readHeap var5 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap)) (not (and (and (inv_main17 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var2 var0))))) (is-O_Int (readHeap var5 (nthAddrRange var2 var0)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main20 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main20 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main25 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main25 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main30 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main30 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main35 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main35 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main40 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main40 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main45 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main45 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main50 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main50 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main55 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var1 var2))))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main55 var4 var3 var2 var1 var0) (not (withinHeap var1 (nthAddrRange var1 var2)))) (is-O_Int (readHeap var4 (nthAddrRange var1 var2)))))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main53 var4 var3 var2 var1 var0) (not (= var0 0))))))
(check-sat)
