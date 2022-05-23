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
(declare-fun inv_main16 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main18 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main22 (Heap Addr Int AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main23 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main25 (Heap Addr Int AddrRange Int Int Int Int Int) Bool)
(declare-fun inv_main26 (Heap Addr Int AddrRange Int Int Int Int Int Int) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main3 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 AddrRange) (var16 Int) (var17 Addr) (var18 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main16 var18 var17 var16 var15 var14 var13 var12 var11 var10) (= var0 (getInt (readHeap var18 (nthAddrRange var15 var13))))) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (= var8 var17)) (= var9 var18)) (is-O_Int (readHeap var18 (nthAddrRange var15 var13))))) (inv_main23 var9 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var9 (nthAddrRange var6 var4)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var4))))) (inv_main25 (writeHeap var9 (nthAddrRange var6 var4) (O_Int var0)) var8 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var8 (nthAddrRange var5 var2))))) (inv_main22 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var8 (nthAddrRange var5 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (or (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_Int (readHeap var8 (nthAddrRange var5 var1))))) (inv_main26 var8 var7 var6 var5 var4 var3 var2 var1 var0 (getInt (readHeap var8 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var0) (getInt (readHeap var9 (nthAddrRange var6 var2)))) (* (- 1) 1)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var2)))) (<= 0 (+ (+ (* (- 1) (+ var3 1)) var5) (* (- 1) 1))))) (inv_main18 var9 var8 var7 var6 var5 var4 (+ var3 1) var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var0) (getInt (readHeap var9 (nthAddrRange var6 var2)))) (* (- 1) 1))))) (is-O_Int (readHeap var9 (nthAddrRange var6 var2)))) (<= 0 (+ (+ (* (- 1) (+ var3 1)) var5) (* (- 1) 1))))) (inv_main18 var9 var8 var7 var6 var5 var4 (+ var3 1) var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main25 var15 var14 var13 var12 var11 var10 var9 var8 var7) (= var5 var10)) (= var6 var11)) (= var1 var12)) (= var2 var13)) (= var3 var14)) (= var4 (writeHeap var15 (nthAddrRange var12 var8) (O_Int var7)))) (is-O_Int (readHeap var15 (nthAddrRange var12 var8)))) (is-O_Int (readHeap var15 (nthAddrRange var12 var8)))) (<= 0 (+ (+ (+ (* (- 1) (+ var5 1)) (* (- 1) 1)) var6) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ (+ 1 var5) 1)) var6) (* (- 1) 1))))) (inv_main18 var4 var3 var2 var1 var6 (+ var5 1) (+ (+ 1 var5) 1) (+ var5 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main3 var3 var2) (<= 0 (+ (+ (* (- 1) 1) var1) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) 1) var1) (* (- 1) 1))))) (inv_main18 var3 var2 var1 var2 var1 0 1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) var0) (getInt (readHeap var9 (nthAddrRange var6 var2)))) (* (- 1) 1)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var2)))) (not (<= 0 (+ (+ (* (- 1) (+ var3 1)) var5) (* (- 1) 1)))))) (inv_main16 var9 var8 var7 var6 var5 var4 (+ var3 1) var3 var1))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (or (not (and (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) var0) (getInt (readHeap var9 (nthAddrRange var6 var2)))) (* (- 1) 1))))) (is-O_Int (readHeap var9 (nthAddrRange var6 var2)))) (not (<= 0 (+ (+ (* (- 1) (+ var3 1)) var5) (* (- 1) 1)))))) (inv_main16 var9 var8 var7 var6 var5 var4 (+ var3 1) var2 var1))))
(assert (forall ((var0 Int) (var1 AddrRange) (var2 Int) (var3 Addr) (var4 Heap) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 AddrRange) (var13 Int) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main25 var15 var14 var13 var12 var11 var10 var9 var8 var7) (= var5 var10)) (= var6 var11)) (= var1 var12)) (= var2 var13)) (= var3 var14)) (= var4 (writeHeap var15 (nthAddrRange var12 var8) (O_Int var7)))) (is-O_Int (readHeap var15 (nthAddrRange var12 var8)))) (is-O_Int (readHeap var15 (nthAddrRange var12 var8)))) (<= 0 (+ (+ (+ (* (- 1) (+ var5 1)) (* (- 1) 1)) var6) (* (- 1) 1)))) (not (<= 0 (+ (+ (* (- 1) (+ (+ 1 var5) 1)) var6) (* (- 1) 1)))))) (inv_main16 var4 var3 var2 var1 var6 (+ var5 1) (+ (+ 1 var5) 1) (+ var5 1) var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main3 var3 var2) (<= 0 (+ (+ (* (- 1) 1) var1) (* (- 1) 1)))) (not (<= 0 (+ (+ (* (- 1) 1) var1) (* (- 1) 1)))))) (inv_main16 var3 var2 var1 var2 var1 0 1 0 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main18 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var2)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var6 var2))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (and (inv_main22 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var6 (nthAddrRange var6 var2)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var3))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main16 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var3)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var3)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main23 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var1)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var6 var4))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var6 (nthAddrRange var6 var4)))) (is-O_Int (readHeap var9 (nthAddrRange var6 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 AddrRange) (var7 Int) (var8 Addr) (var9 Heap)) (not (and (and (inv_main26 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var9 (nthAddrRange var6 var4))))) (is-O_Int (readHeap var9 (nthAddrRange var6 var4)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var1))))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (withinHeap var5 (nthAddrRange var5 var1)))) (is-O_Int (readHeap var8 (nthAddrRange var5 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 AddrRange) (var6 Int) (var7 Addr) (var8 Heap)) (not (and (and (inv_main25 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_Int (readHeap var8 (nthAddrRange var5 var1))))) (is-O_Int (readHeap var8 (nthAddrRange var5 var1)))))))
(check-sat)
