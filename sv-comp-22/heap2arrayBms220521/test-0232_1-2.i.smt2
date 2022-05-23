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

(declare-datatypes ((HeapObject 0) (item 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_item (getitem item)) (defObj))
                   ((item (next Addr) (data Addr)))))
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
(declare-fun inv_main13 (Heap Int Addr Int Int Addr) Bool)
(declare-fun inv_main14 (Heap Int Addr Int Int Addr) Bool)
(declare-fun inv_main16 (Heap Int Addr Int Int Addr Addr) Bool)
(declare-fun inv_main2 (Heap Int) Bool)
(declare-fun inv_main21 (Heap Int Addr Int) Bool)
(declare-fun inv_main23 (Heap Int Addr Int Addr) Bool)
(declare-fun inv_main28 (Heap Int Addr Int) Bool)
(assert (inv_main2 emptyHeap 0))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (or (not (and (and (inv_main13 var5 var4 var3 var2 var1 var0) (is-O_item (readHeap var5 var0))) (is-O_item (readHeap var5 var0)))) (inv_main14 (writeHeap var5 var0 (O_item (item var3 (data (getitem (readHeap var5 var0)))))) var4 var3 var2 var1 var0))))
(assert (forall ((var0 item) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap) (var10 Heap) (var11 Int) (var12 Int) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Addr) (var18 Int) (var19 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main16 var19 var18 var17 var16 var15 var14 var13) (= var5 var14)) (= var1 var15)) (= var3 var16)) (= var2 var17)) (= var7 var18)) (= var9 (writeHeap var19 var14 (O_item (item (next (getitem (readHeap var19 var14))) var13))))) (is-O_item (readHeap var19 var14))) (is-O_item (readHeap var19 var14))) (or (and (<= 0 (+ (+ (* (- 1) var7) 20) (* (- 1) 1))) (= var12 1)) (and (not (<= 0 (+ (+ (* (- 1) var7) 20) (* (- 1) 1)))) (= var12 0)))) (= var4 (+ var3 1))) (= var6 var5)) (= var8 var7)) (= var10 var9)) (not (= var11 0))) (not (= var12 0)))) (inv_main13 (newHeap (allocHeap var10 (O_item var0))) (+ var8 1) var6 var4 2 (newAddr (allocHeap var10 (O_item var0)))))))
(assert (forall ((var0 item) (var1 Addr) (var2 Int) (var3 Heap) (var4 Int) (var5 Heap)) (or (not (and (and (and (inv_main2 var5 var4) (= var1 nullAddr)) (= var2 var4)) (= var3 var5))) (inv_main13 (newHeap (allocHeap var3 (O_item var0))) (+ var2 1) var1 0 2 (newAddr (allocHeap var3 (O_item var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (or (not (and (inv_main21 var3 var2 var1 var0) (is-O_item (readHeap var3 var1)))) (inv_main23 var3 var2 var1 var0 (next (getitem (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap) (var4 Addr) (var5 Int) (var6 Addr) (var7 Int) (var8 Heap) (var9 Int) (var10 Addr) (var11 Int) (var12 Addr) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main23 var14 var13 var12 var11 var10) (= var0 var4)) (= var9 var5)) (= var1 var6)) (= var2 var7)) (= var3 (writeHeap var8 var6 defObj))) (= var4 var10)) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 (writeHeap var14 (data (getitem (readHeap var14 var12))) defObj))) (is-O_item (readHeap var14 var12))) (<= 0 (+ (+ (* (- 1) 1) var9) (* (- 1) 1))))) (inv_main28 var3 var2 var0 (+ var9 (* (- 1) 1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap) (var4 Addr) (var5 Int) (var6 Addr) (var7 Int) (var8 Heap) (var9 Int) (var10 Int) (var11 Addr) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main28 var13 var12 var11 var10) (= var0 var4)) (= var9 var5)) (= var1 var6)) (= var2 var7)) (= var3 (writeHeap var8 var6 defObj))) (= var4 (next (getitem (readHeap var13 var11))))) (= var5 var10)) (= var6 var11)) (= var7 var12)) (= var8 var13)) (is-O_item (readHeap var13 var11))) (<= 0 (+ (+ (* (- 1) 1) var9) (* (- 1) 1))))) (inv_main28 var3 var2 var0 (+ var9 (* (- 1) 1))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main16 var13 var12 var11 var10 var9 var8 var7) (= var0 var8)) (= var1 var9)) (= var6 var10)) (= var2 var11)) (= var3 var12)) (= var4 (writeHeap var13 var8 (O_item (item (next (getitem (readHeap var13 var8))) var7))))) (is-O_item (readHeap var13 var8))) (is-O_item (readHeap var13 var8))) (= var5 0)) (not (<= 0 (+ (+ 1 var6) (* (- 1) 1))))) (<= 0 (+ (+ 1 var6) (* (- 1) 1))))) (inv_main28 var4 var3 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Int) (var18 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main16 var18 var17 var16 var15 var14 var13 var12) (= var3 var13)) (= var0 var14)) (= var2 var15)) (= var1 var16)) (= var5 var17)) (= var7 (writeHeap var18 var13 (O_item (item (next (getitem (readHeap var18 var13))) var12))))) (is-O_item (readHeap var18 var13))) (is-O_item (readHeap var18 var13))) (or (and (<= 0 (+ (+ (* (- 1) var5) 20) (* (- 1) 1))) (= var10 1)) (and (not (<= 0 (+ (+ (* (- 1) var5) 20) (* (- 1) 1)))) (= var10 0)))) (= var11 (+ var2 1))) (= var4 var3)) (= var6 var5)) (= var8 var7)) (not (= var9 0))) (= var10 0)) (not (<= 0 (+ var11 (* (- 1) 1))))) (<= 0 (+ var11 (* (- 1) 1))))) (inv_main28 var8 var6 var4 var11))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Addr) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main16 var13 var12 var11 var10 var9 var8 var7) (= var0 var8)) (= var1 var9)) (= var6 var10)) (= var2 var11)) (= var3 var12)) (= var4 (writeHeap var13 var8 (O_item (item (next (getitem (readHeap var13 var8))) var7))))) (is-O_item (readHeap var13 var8))) (is-O_item (readHeap var13 var8))) (= var5 0)) (<= 0 (+ (+ 1 var6) (* (- 1) 1))))) (inv_main21 var4 var3 var0 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap) (var8 Heap) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Int) (var18 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main16 var18 var17 var16 var15 var14 var13 var12) (= var3 var13)) (= var0 var14)) (= var2 var15)) (= var1 var16)) (= var5 var17)) (= var7 (writeHeap var18 var13 (O_item (item (next (getitem (readHeap var18 var13))) var12))))) (is-O_item (readHeap var18 var13))) (is-O_item (readHeap var18 var13))) (or (and (<= 0 (+ (+ (* (- 1) var5) 20) (* (- 1) 1))) (= var10 1)) (and (not (<= 0 (+ (+ (* (- 1) var5) 20) (* (- 1) 1)))) (= var10 0)))) (= var11 (+ var2 1))) (= var4 var3)) (= var6 var5)) (= var8 var7)) (not (= var9 0))) (= var10 0)) (<= 0 (+ var11 (* (- 1) 1))))) (inv_main21 var8 var6 var4 var11))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (or (not (and (and (and (and (inv_main14 var5 var4 var3 var2 var1 var0) (is-O_item (readHeap var5 (next (getitem (readHeap var5 var0)))))) (is-O_item (readHeap var5 var0))) (not (= (next (getitem (readHeap var5 var0))) nullAddr))) (is-O_item (readHeap var5 var0)))) (inv_main16 var5 var4 var3 var2 var1 var0 (data (getitem (readHeap var5 (next (getitem (readHeap var5 var0))))))))))
(assert (forall ((var0 item) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main14 var6 var5 var4 var3 var2 var1) (= (next (getitem (readHeap var6 var1))) nullAddr)) (is-O_item (readHeap var6 var1)))) (inv_main16 (newHeap (allocHeap var6 (O_item var0))) var5 var4 var3 var2 var1 (newAddr (allocHeap var6 (O_item var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (not (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var5 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (not (and (and (inv_main13 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var5 var0)))) (is-O_item (readHeap var5 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (not (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var5 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (not (and (and (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var5 var0)))) (not (= (next (getitem (readHeap var5 var0))) nullAddr))) (is-O_item (readHeap var5 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Heap)) (not (and (and (and (and (inv_main14 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var5 (next (getitem (readHeap var5 var0))))))) (is-O_item (readHeap var5 var0))) (not (= (next (getitem (readHeap var5 var0))) nullAddr))) (is-O_item (readHeap var5 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Heap)) (not (and (inv_main16 var6 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Heap)) (not (and (and (inv_main16 var6 var5 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var6 var1)))) (is-O_item (readHeap var6 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (not (and (inv_main21 var3 var2 var1 var0) (not (is-O_item (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Heap)) (not (and (inv_main23 var4 var3 var2 var1 var0) (not (is-O_item (readHeap var4 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (not (and (inv_main28 var3 var2 var1 var0) (not (is-O_item (readHeap var3 var1)))))))
(check-sat)
