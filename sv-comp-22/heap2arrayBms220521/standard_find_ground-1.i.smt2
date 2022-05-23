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
(declare-fun inv_main12 (Heap AddrRange Int Int Int) Bool)
(declare-fun inv_main20 (Heap AddrRange Int Int Int Int) Bool)
(declare-fun inv_main3 (Heap AddrRange) Bool)
(declare-fun inv_main8 (Heap AddrRange Int Int Int) Bool)
(assert (forall ((var0 Int) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main3 (newBatchHeap (batchAllocHeap emptyHeap (O_Int var0) 100000)) (AddrRange (ite (<= 0 99999) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100000)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (or (not (and (and (inv_main20 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var5 (nthAddrRange var4 var0)))) (<= 0 (+ (+ (* (- 1) (+ var0 1)) var2) (* (- 1) 1))))) (inv_main20 var5 var4 var3 var2 var1 (+ var0 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (or (not (and (and (inv_main8 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var1) 100000) (* (- 1) 1))))) (<= 0 (+ var1 (* (- 1) 1))))) (inv_main20 var4 var3 var2 var1 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Heap) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 AddrRange) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main8 var16 var15 var14 var13 var12) (or (and (not (= var4 var7)) (= var10 1)) (and (= var4 var7) (= var10 0)))) (= var0 var5)) (= var11 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 (getInt (readHeap var16 (nthAddrRange var15 var13))))) (= var5 var12)) (= var6 var13)) (= var7 var14)) (= var8 var15)) (= var9 var16)) (is-O_Int (readHeap var16 (nthAddrRange var15 var13)))) (<= 0 (+ (+ (* (- 1) var13) 100000) (* (- 1) 1)))) (= var10 0)) (<= 0 (+ var11 (* (- 1) 1))))) (inv_main20 var3 var2 var1 var11 var0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 AddrRange) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main8 var16 var15 var14 var13 var12) (or (and (not (= var5 var8)) (= var11 1)) (and (= var5 var8) (= var11 0)))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 (getInt (readHeap var16 (nthAddrRange var15 var13))))) (= var6 var12)) (= var7 var13)) (= var8 var14)) (= var9 var15)) (= var10 var16)) (is-O_Int (readHeap var16 (nthAddrRange var15 var13)))) (<= 0 (+ (+ (* (- 1) var13) 100000) (* (- 1) 1)))) (not (= var11 0)))) (inv_main8 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main12 var10 var9 var8 var7 var6) (= var5 var6)) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var4 (writeHeap var10 (nthAddrRange var9 var6) (O_Int var3)))) (is-O_Int (readHeap var10 (nthAddrRange var9 var6)))) (is-O_Int (readHeap var10 (nthAddrRange var9 var6)))) (not (<= 0 (+ (+ (* (- 1) (+ var5 1)) 100000) (* (- 1) 1)))))) (inv_main8 var4 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 AddrRange) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 AddrRange) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main12 var10 var9 var8 var7 var6) (= var5 var6)) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var4 (writeHeap var10 (nthAddrRange var9 var6) (O_Int var3)))) (is-O_Int (readHeap var10 (nthAddrRange var9 var6)))) (is-O_Int (readHeap var10 (nthAddrRange var9 var6)))) (<= 0 (+ (+ (* (- 1) (+ var5 1)) 100000) (* (- 1) 1))))) (inv_main12 var4 var2 var1 var0 (+ var5 1)))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Heap)) (or (not (inv_main3 var2 var1)) (inv_main12 var2 var1 var0 0 0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (inv_main12 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (and (inv_main12 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var4 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (and (inv_main12 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var3 var0))))) (is-O_Int (readHeap var4 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (and (inv_main8 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var4 (nthAddrRange var3 var1))))) (<= 0 (+ (+ (* (- 1) var1) 100000) (* (- 1) 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 Heap)) (not (and (and (and (inv_main8 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var1)))) (is-O_Int (readHeap var4 (nthAddrRange var3 var1)))) (<= 0 (+ (+ (* (- 1) var1) 100000) (* (- 1) 1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (inv_main20 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var4 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main20 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var0)))) (is-O_Int (readHeap var5 (nthAddrRange var4 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main20 var5 var4 var3 var2 var1 var0) (= (getInt (readHeap var5 (nthAddrRange var4 var0))) var3)) (is-O_Int (readHeap var5 (nthAddrRange var4 var0)))))))
(check-sat)
