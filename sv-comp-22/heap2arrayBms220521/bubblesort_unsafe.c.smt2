(set-logic HORN)
(set-info :source |
    Benchmark: C_VC
    Output by Princess (http://www.philipp.ruemmer.org/princess.shtml)
|)
(set-info :status unsat)
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
(declare-fun inv_main14 (Heap Addr Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main15 (Heap Addr Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main17 (Heap Addr Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main19 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main20 (Heap Addr Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main22 (Heap Addr Int AddrRange Int Int Int Int) Bool)
(declare-fun inv_main23 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 AddrRange) (var14 Int) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main17 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 (getInt (readHeap var16 (nthAddrRange var13 (+ var10 (* (- 1) 1))))))) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 var15)) (= var8 var16)) (is-O_Int (readHeap var16 (nthAddrRange var13 (+ var10 (* (- 1) 1))))))) (inv_main20 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1)))))) (is-O_Int (readHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1))))))) (inv_main22 (writeHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1))) (O_Int var0)) var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (or (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var4 var1))))) (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var7 (nthAddrRange var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (or (not (and (inv_main14 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var2 (* (- 1) var1))))) (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (or (not (and (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var7 (nthAddrRange var4 (+ var1 (* (- 1) 1))))))) (inv_main19 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var7 (nthAddrRange var4 (+ var1 (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (or (not (and (and (inv_main14 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var2 (* (- 1) var1))))) (<= 0 (+ var2 (* (- 1) 1))))) (inv_main14 var7 var6 var5 var4 var3 (+ var2 (* (- 1) 1)) 1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main22 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 (writeHeap var15 (nthAddrRange var12 var9) (O_Int var8)))) (is-O_Int (readHeap var15 (nthAddrRange var12 var9)))) (is-O_Int (readHeap var15 (nthAddrRange var12 var9))))) (inv_main14 var7 var6 var5 var4 var3 var2 (+ var1 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) (getInt (readHeap var8 (nthAddrRange var5 var2)))) var0) (* (- 1) 1))))) (is-O_Int (readHeap var8 (nthAddrRange var5 var2))))) (inv_main14 var8 var7 var6 var5 var4 var3 (+ var2 1) var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (inv_main3 var3 var2) (<= 0 (+ var1 (* (- 1) 1))))) (inv_main14 var3 var2 var1 var2 var1 (+ var1 (* (- 1) 1)) 1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) (getInt (readHeap var8 (nthAddrRange var5 var2)))) var0) (* (- 1) 1)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var2))))) (inv_main17 var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var4 (+ var1 (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (and (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 (+ var1 (* (- 1) 1)))))) (is-O_Int (readHeap var7 (nthAddrRange var4 (+ var1 (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main19 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var2)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var4 (+ var1 (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 (+ var1 (* (- 1) 1)))))) (is-O_Int (readHeap var7 (nthAddrRange var4 (+ var1 (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (and (inv_main20 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var1)))) (is-O_Int (readHeap var7 (nthAddrRange var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1))))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 (+ var2 (* (- 1) 1)))))) (is-O_Int (readHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1))))))) (is-O_Int (readHeap var8 (nthAddrRange var5 (+ var2 (* (- 1) 1)))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var4 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var4 (nthAddrRange var4 var1)))) (is-O_Int (readHeap var7 (nthAddrRange var4 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 AddrRange) (var5 Int) (var6 Addr) (var7 Heap)) (not (and (and (inv_main22 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var7 (nthAddrRange var4 var1))))) (is-O_Int (readHeap var7 (nthAddrRange var4 var1)))))))
(check-sat)
