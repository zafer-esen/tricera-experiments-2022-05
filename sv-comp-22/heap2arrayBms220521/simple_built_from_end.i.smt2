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

(declare-datatypes ((HeapObject 0) (node 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_node (getnode node)) (defObj))
                   ((node (h Int) (n Addr)))))
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
(declare-fun inv_main10 (Heap Addr Addr) Bool)
(declare-fun inv_main13 (Heap Addr Addr Int) Bool)
(declare-fun inv_main17 (Heap Addr Addr) Bool)
(declare-fun inv_main21 (Heap Addr Addr) Bool)
(declare-fun inv_main22 (Heap Addr Addr) Bool)
(declare-fun inv_main23 (Heap Addr Addr) Bool)
(declare-fun inv_main4 (Heap Addr Addr) Bool)
(assert (forall ((var0 Addr) (var1 Heap)) (or (not (= var1 emptyHeap)) (inv_main4 var1 var0 nullAddr))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main4 var3 var2 var1) (= var0 0)) (not (= var1 nullAddr)))) (inv_main21 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main22 var6 var5 var4) (= var3 (n (getnode (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_node (readHeap var6 var4))) (not (= var3 nullAddr)))) (inv_main21 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main21 var6 var5 var4) (= var3 (h (getnode (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_node (readHeap var6 var4))) (not (= var3 1)))) (inv_main23 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (inv_main13 var3 var2 var1 var0)) (inv_main13 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 node) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main4 var8 var7 var6) (not (= var0 0))) (= var5 (newAddr (allocHeap var8 (O_node var3))))) (= var1 var6)) (= var2 var7)) (= var4 (newHeap (allocHeap var8 (O_node var3))))) (= var5 nullAddr))) (inv_main13 var4 var5 var1 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main21 var6 var5 var4) (= var3 (h (getnode (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_node (readHeap var6 var4))) (= var3 1))) (inv_main22 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 node) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main4 var8 var7 var6) (not (= var0 0))) (= var5 (newAddr (allocHeap var8 (O_node var3))))) (= var1 var6)) (= var2 var7)) (= var4 (newHeap (allocHeap var8 (O_node var3))))) (not (= var5 nullAddr)))) (inv_main10 var4 var5 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (and (and (and (and (inv_main17 var5 var4 var3) (= var0 var3)) (= var1 var4)) (= var2 (writeHeap var5 var4 (O_node (node (h (getnode (readHeap var5 var4))) var3))))) (is-O_node (readHeap var5 var4))) (is-O_node (readHeap var5 var4)))) (inv_main4 var2 var1 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main10 var2 var1 var0) (is-O_node (readHeap var2 var1))) (is-O_node (readHeap var2 var1)))) (inv_main17 (writeHeap var2 var1 (O_node (node 1 (n (getnode (readHeap var2 var1)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main10 var2 var1 var0) (not (is-O_node (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main10 var2 var1 var0) (not (is-O_node (readHeap var2 var1)))) (is-O_node (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main17 var2 var1 var0) (not (is-O_node (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main17 var2 var1 var0) (not (is-O_node (readHeap var2 var1)))) (is-O_node (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main21 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main23 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(check-sat)
