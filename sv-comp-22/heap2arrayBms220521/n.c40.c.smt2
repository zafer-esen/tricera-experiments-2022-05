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
(declare-fun inv_main10 (Heap AddrRange AddrRange Int Int Int Int) Bool)
(declare-fun inv_main14 (Heap AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main2 (Heap AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main20 (Heap AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main5 (Heap AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main6 (Heap AddrRange AddrRange Int Int Int) Bool)
(declare-fun inv_main7 (Heap AddrRange AddrRange Int Int Int) Bool)
(assert (inv_main2 (newBatchHeap (batchAllocHeap (newBatchHeap (batchAllocHeap emptyHeap (O_Int 0) 100)) (O_Int 0) 100)) (AddrRange (ite (<= 0 99) (+ (HeapSize emptyHeap) 1) (HeapSize emptyHeap)) 100) (AddrRange (ite (<= 0 99) (+ (HeapSize (newBatchHeap (batchAllocHeap emptyHeap (O_Int 0) 100))) 1) (HeapSize (newBatchHeap (batchAllocHeap emptyHeap (O_Int 0) 100)))) 100) 0 0 0))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main5 var12 var11 var10 var9 var8 var7) (= var6 (getInt (readHeap var12 (nthAddrRange var11 var9))))) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (is-O_Int (readHeap var12 (nthAddrRange var11 var9)))) (not (= var6 0)))) (inv_main7 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (or (not (and (inv_main7 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var5 (nthAddrRange var4 var2))))) (inv_main10 var5 var4 var3 var2 var1 var0 (getInt (readHeap var5 (nthAddrRange var4 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 AddrRange) (var7 AddrRange) (var8 AddrRange) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 AddrRange) (var17 AddrRange) (var18 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main6 var18 var17 var16 var15 var14 var13) (= var11 var13)) (= var1 var14)) (= var3 var15)) (= var5 var16)) (= var7 var17)) (= var9 (writeHeap var18 (nthAddrRange var16 var15) (O_Int 0)))) (is-O_Int (readHeap var18 (nthAddrRange var16 var15)))) (is-O_Int (readHeap var18 (nthAddrRange var16 var15)))) (or (and (<= 0 (+ (+ (* (- 1) var11) var3) (* (- 1) 1))) (= var12 1)) (and (not (<= 0 (+ (+ (* (- 1) var11) var3) (* (- 1) 1)))) (= var12 0)))) (= var0 var11)) (= var2 var1)) (= var4 var3)) (= var6 var5)) (= var8 var7)) (= var10 var9)) (<= 0 var11)) (not (= var12 0)))) (inv_main14 var10 var8 var6 var4 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main14 var12 var11 var10 var9 var8 var7) (= var6 (getInt (readHeap var12 (nthAddrRange var10 var7))))) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (is-O_Int (readHeap var12 (nthAddrRange var10 var7)))) (= var6 0))) (inv_main20 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main5 var12 var11 var10 var9 var8 var7) (= var6 (getInt (readHeap var12 (nthAddrRange var11 var9))))) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (is-O_Int (readHeap var12 (nthAddrRange var11 var9)))) (= var6 0))) (inv_main6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (or (not (inv_main2 var6 var5 var4 var3 var2 var1)) (inv_main5 var6 var5 var4 0 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 AddrRange) (var11 AddrRange) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main10 var12 var11 var10 var9 var8 var7 var6) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 (writeHeap var12 (nthAddrRange var10 var9) (O_Int var6)))) (is-O_Int (readHeap var12 (nthAddrRange var10 var9)))) (is-O_Int (readHeap var12 (nthAddrRange var10 var9))))) (inv_main5 var5 var4 var3 (+ var2 1) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main5 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var4 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main5 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var2)))) (is-O_Int (readHeap var5 (nthAddrRange var4 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main7 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var4 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main7 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var2)))) (is-O_Int (readHeap var5 (nthAddrRange var4 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (inv_main10 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var4 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (and (inv_main10 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var3)))) (is-O_Int (readHeap var6 (nthAddrRange var4 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 AddrRange) (var6 Heap)) (not (and (and (inv_main10 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var6 (nthAddrRange var4 var3))))) (is-O_Int (readHeap var6 (nthAddrRange var4 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var3 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main6 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var2)))) (is-O_Int (readHeap var5 (nthAddrRange var3 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var3 var2))))) (is-O_Int (readHeap var5 (nthAddrRange var3 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var5 (nthAddrRange var3 var0))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (and (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (withinHeap var3 (nthAddrRange var3 var0)))) (is-O_Int (readHeap var5 (nthAddrRange var3 var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 AddrRange) (var4 AddrRange) (var5 Heap)) (not (inv_main20 var5 var4 var3 var2 var1 var0))))
(check-sat)
