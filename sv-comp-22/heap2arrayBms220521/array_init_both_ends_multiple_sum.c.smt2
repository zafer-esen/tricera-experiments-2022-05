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
(declare-fun inv_main12 (Heap Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main15 (Heap Int AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main16 (Heap Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main18 (Heap Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main21 (Heap Int AddrRange AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main6 (Heap Int AddrRange AddrRange Int Int) Bool)
(declare-fun inv_main9 (Heap Int AddrRange AddrRange Int Int) Bool)
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap) (var10 Int) (var11 Heap)) (or (not (and (and (batchAllocHeapPostHeap emptyHeap var9 (O_Int var8) var10) (batchAllocHeapPostHeap emptyHeap var5 (O_Int var4) var7)) (and (and (and (and (and (and (and (and (= var6 (AddrRange (ite (<= 0 (+ var10 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var10)) (= var7 var10)) true) (= var10 100000)) (= var11 emptyHeap)) (= var1 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var7))) (= var2 var6)) (= var3 var7)) true))) (inv_main6 var5 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap) (var10 Int) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (= var6 (AddrRange (ite (<= 0 (+ var10 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var10)) (= var7 var10)) true) (= var10 100000)) (= var11 emptyHeap)) (= var1 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var7))) (= var2 var6)) (= var3 var7)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var8) var10 var10))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Int) (var4 Int) (var5 Heap) (var6 AddrRange) (var7 Int) (var8 Int) (var9 Heap) (var10 Int) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (= var6 (AddrRange (ite (<= 0 (+ var10 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var10)) (= var7 var10)) true) (= var10 100000)) (= var11 emptyHeap)) (= var1 (AddrRange (ite (<= 0 (+ var7 (- 1))) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) var7))) (= var2 var6)) (= var3 var7)) true)) (batchAllocHeap emptyHeap emptyHeap (O_Int var4) var7 var7))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var1) var4) (* (- 1) 1))))) (not (<= 0 (+ var4 (* (- 1) 1)))))) (inv_main16 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main21 var15 var14 var13 var12 var11 var10 var9 var8 var7) (= var0 (+ (+ var9 (* (- 1) (getInt (readHeap var15 (nthAddrRange var12 (+ (+ (* (- 1) var11) var7) (* (- 1) 1))))))) var8))) (= var1 var10)) (= var5 var11)) (= var2 var12)) (= var3 var13)) (= var6 var14)) (= var4 var15)) (is-O_Int (readHeap var15 (nthAddrRange var12 (+ (+ (* (- 1) var11) var7) (* (- 1) 1)))))) (not (<= 0 (+ (+ (* (- 1) (+ var5 1)) var6) (* (- 1) 1)))))) (inv_main16 var4 var6 var3 var2 (+ var5 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Int) (var7 Heap) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main18 var13 var12 var11 var10 var9 var8) (= var0 (getInt (readHeap var13 (nthAddrRange var11 var9))))) (= var1 var8)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) (= var6 var12)) (= var7 var13)) (is-O_Int (readHeap var13 (nthAddrRange var11 var9))))) (inv_main21 var7 var6 var5 var4 var3 var2 var1 var0 var6))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (and (inv_main12 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var1) var4) (* (- 1) 1))))) (<= 0 (+ var4 (* (- 1) 1))))) (inv_main18 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 AddrRange) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main21 var15 var14 var13 var12 var11 var10 var9 var8 var7) (= var0 (+ (+ var9 (* (- 1) (getInt (readHeap var15 (nthAddrRange var12 (+ (+ (* (- 1) var11) var7) (* (- 1) 1))))))) var8))) (= var1 var10)) (= var5 var11)) (= var2 var12)) (= var3 var13)) (= var6 var14)) (= var4 var15)) (is-O_Int (readHeap var15 (nthAddrRange var12 (+ (+ (* (- 1) var11) var7) (* (- 1) 1)))))) (<= 0 (+ (+ (* (- 1) (+ var5 1)) var6) (* (- 1) 1))))) (inv_main18 var4 var6 var3 var2 (+ var5 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 AddrRange) (var11 Int) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main15 var12 var11 var10 var9 var8 var7 var6) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 (writeHeap var12 (nthAddrRange var9 (+ (+ (* (- 1) var8) var6) (* (- 1) 1))) (O_Int var8)))) (is-O_Int (readHeap var12 (nthAddrRange var9 (+ (+ (* (- 1) var8) var6) (* (- 1) 1)))))) (is-O_Int (readHeap var12 (nthAddrRange var9 (+ (+ (* (- 1) var8) var6) (* (- 1) 1))))))) (inv_main12 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var4 (* (- 1) 1)))))) (inv_main12 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main9 var11 var10 var9 var8 var7 var6) (= var0 var6)) (= var4 var7)) (= var1 var8)) (= var2 var9)) (= var5 var10)) (= var3 (writeHeap var11 (nthAddrRange var9 var7) (O_Int var7)))) (is-O_Int (readHeap var11 (nthAddrRange var9 var7)))) (is-O_Int (readHeap var11 (nthAddrRange var9 var7)))) (not (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1)))))) (inv_main12 var3 var5 var2 var1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main12 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var1) var4) (* (- 1) 1))))) (inv_main15 var5 var4 var3 var2 var1 var0 var4))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (or (not (and (inv_main6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var4 (* (- 1) 1))))) (inv_main9 var5 var4 var3 var2 0 var0))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 AddrRange) (var10 Int) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main9 var11 var10 var9 var8 var7 var6) (= var0 var6)) (= var4 var7)) (= var1 var8)) (= var2 var9)) (= var5 var10)) (= var3 (writeHeap var11 (nthAddrRange var9 var7) (O_Int var7)))) (is-O_Int (readHeap var11 (nthAddrRange var9 var7)))) (is-O_Int (readHeap var11 (nthAddrRange var9 var7)))) (<= 0 (+ (+ (* (- 1) (+ var4 1)) var5) (* (- 1) 1))))) (inv_main9 var3 var5 var2 var1 (+ var4 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main9 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (and (inv_main9 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var1)))) (is-O_Int (readHeap var5 (nthAddrRange var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (and (inv_main9 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var3 var1))))) (is-O_Int (readHeap var5 (nthAddrRange var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (inv_main15 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var3 (+ (+ (* (- 1) var2) var0) (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (and (inv_main15 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 (+ (+ (* (- 1) var2) var0) (* (- 1) 1)))))) (is-O_Int (readHeap var6 (nthAddrRange var3 (+ (+ (* (- 1) var2) var0) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Int) (var6 Heap)) (not (and (and (inv_main15 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var3 (+ (+ (* (- 1) var2) var0) (* (- 1) 1))))))) (is-O_Int (readHeap var6 (nthAddrRange var3 (+ (+ (* (- 1) var2) var0) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var3 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (and (inv_main18 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var1)))) (is-O_Int (readHeap var5 (nthAddrRange var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Heap)) (not (and (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 (+ (+ (* (- 1) var4) var0) (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 Int) (var8 Heap)) (not (and (and (inv_main21 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 (+ (+ (* (- 1) var4) var0) (* (- 1) 1)))))) (is-O_Int (readHeap var8 (nthAddrRange var5 (+ (+ (* (- 1) var4) var0) (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 AddrRange) (var4 Int) (var5 Heap)) (not (and (inv_main16 var5 var4 var3 var2 var1 var0) (not (= var0 0))))))
(check-sat)
