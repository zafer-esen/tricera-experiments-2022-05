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

(declare-datatypes ((HeapObject 0) (node 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_node (getnode node)) (defObj))
                   ((node (next Addr) (stock Int) (order Int)))))
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
(declare-fun inv_main12 (Heap Addr Int Addr) Bool)
(declare-fun inv_main13 (Heap Addr Int Addr) Bool)
(declare-fun inv_main14 (Heap Addr Int Addr) Bool)
(declare-fun inv_main16 (Heap Addr Addr) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main20 (Heap Addr Addr Int) Bool)
(declare-fun inv_main21 (Heap Addr Addr Int) Bool)
(declare-fun inv_main26 (Heap Addr Addr Int) Bool)
(declare-fun inv_main27 (Heap Addr Addr Int) Bool)
(declare-fun inv_main28 (Heap Addr Addr Int Int) Bool)
(declare-fun inv_main3 (Heap Addr) Bool)
(declare-fun inv_main31 (Heap Addr Addr) Bool)
(declare-fun inv_main32 (Heap Addr Addr) Bool)
(declare-fun inv_main33 (Heap Addr Addr) Bool)
(declare-fun inv_main35 (Heap Addr Addr Int) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 node) (var1 Int) (var2 Int) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main3 var4 var3) (not (= var1 0))) (not (<= 0 (+ (* (- 1) var2) (* (- 1) 1)))))) (inv_main12 (newHeap (allocHeap var4 (O_node var0))) var3 var2 (newAddr (allocHeap var4 (O_node var0)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main28 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var2))) (is-O_node (readHeap var4 var2)))) (inv_main27 (writeHeap var4 var2 (O_node (node (next (getnode (readHeap var4 var2))) var0 (order (getnode (readHeap var4 var2)))))) var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main35 var3 var2 var1 var0) (<= 0 (+ (+ (* (- 1) (stock (getnode (readHeap var3 var1)))) var0) (* (- 1) 1)))) (is-O_node (readHeap var3 var1)))) (inv_main33 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main32 var6 var5 var4) (= var3 (next (getnode (readHeap var6 var4))))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_node (readHeap var6 var4))) (not (= var3 nullAddr)))) (inv_main31 var2 var1 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main16 var2 var1 var0) (= var0 nullAddr)) (not (= var1 nullAddr)))) (inv_main31 var2 var1 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main26 var3 var2 var1 var0) (is-O_node (readHeap var3 var1)))) (inv_main28 var3 var2 var1 var0 (stock (getnode (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main12 var3 var2 var1 var0) (is-O_node (readHeap var3 var0))) (is-O_node (readHeap var3 var0)))) (inv_main13 (writeHeap var3 var0 (O_node (node (next (getnode (readHeap var3 var0))) var1 (order (getnode (readHeap var3 var0)))))) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main20 var13 var12 var11 var10) (or (and (<= 0 (+ (+ (* (- 1) var4) var5) (* (- 1) 1))) (= var9 1)) (and (not (<= 0 (+ (+ (* (- 1) var4) var5) (* (- 1) 1)))) (= var9 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (stock (getnode (readHeap var13 var11))))) (= var5 var10)) (= var6 var11)) (= var7 var12)) (= var8 var13)) (is-O_node (readHeap var13 var11))) (not (<= 0 (+ (* (- 1) var10) (* (- 1) 1))))) (= var9 0))) (inv_main21 var3 var2 var1 var0))))
(assert (forall ((var0 Heap)) (or (not (inv_main2 var0)) (inv_main3 var0 nullAddr))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Int) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (inv_main14 var7 var6 var5 var4) (= var0 var4)) (= var1 var5)) (= var2 var6)) (= var3 (writeHeap var7 var4 (O_node (node var6 (stock (getnode (readHeap var7 var4))) (order (getnode (readHeap var7 var4)))))))) (is-O_node (readHeap var7 var4))) (is-O_node (readHeap var7 var4)))) (inv_main3 var3 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main3 var3 var2) (not (= var0 0))) (<= 0 (+ (* (- 1) var1) (* (- 1) 1))))) (inv_main3 var3 var2))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main21 var3 var2 var1 var0) (is-O_node (readHeap var3 var1))) (is-O_node (readHeap var3 var1)))) (inv_main26 (writeHeap var3 var1 (O_node (node (next (getnode (readHeap var3 var1))) (stock (getnode (readHeap var3 var1))) var0))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main27 var8 var7 var6 var5) (= var0 (next (getnode (readHeap var8 var6))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (= var4 var8)) (is-O_node (readHeap var8 var6)))) (inv_main16 var4 var3 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main20 var3 var2 var1 var0) (<= 0 (+ (* (- 1) var0) (* (- 1) 1))))) (inv_main16 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main20 var13 var12 var11 var10) (or (and (<= 0 (+ (+ (* (- 1) var4) var5) (* (- 1) 1))) (= var9 1)) (and (not (<= 0 (+ (+ (* (- 1) var4) var5) (* (- 1) 1)))) (= var9 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (stock (getnode (readHeap var13 var11))))) (= var5 var10)) (= var6 var11)) (= var7 var12)) (= var8 var13)) (is-O_node (readHeap var13 var11))) (not (<= 0 (+ (* (- 1) var10) (* (- 1) 1))))) (not (= var9 0)))) (inv_main16 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Heap)) (or (not (and (inv_main3 var2 var1) (= var0 0))) (inv_main16 var2 var1 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (inv_main33 var2 var1 var0)) (inv_main32 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main35 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) (stock (getnode (readHeap var3 var1)))) var0) (* (- 1) 1))))) (is-O_node (readHeap var3 var1)))) (inv_main32 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main16 var3 var2 var1) (not (= var1 nullAddr)))) (inv_main20 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main13 var3 var2 var1 var0) (is-O_node (readHeap var3 var0))) (is-O_node (readHeap var3 var0)))) (inv_main14 (writeHeap var3 var0 (O_node (node (next (getnode (readHeap var3 var0))) (stock (getnode (readHeap var3 var0))) 0))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main31 var2 var1 var0) (is-O_node (readHeap var2 var0)))) (inv_main35 var2 var1 var0 (order (getnode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (inv_main12 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (and (inv_main12 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var0)))) (is-O_node (readHeap var3 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (inv_main13 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (and (inv_main13 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var0)))) (is-O_node (readHeap var3 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (inv_main14 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Heap)) (not (and (and (inv_main14 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var0)))) (is-O_node (readHeap var3 var0))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main20 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))) (not (<= 0 (+ (* (- 1) var0) (* (- 1) 1))))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main21 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main21 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))) (is-O_node (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main26 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main28 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var2)))))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main28 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var2)))) (is-O_node (readHeap var4 var2))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main27 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main31 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main35 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (inv_main33 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main32 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(check-sat)