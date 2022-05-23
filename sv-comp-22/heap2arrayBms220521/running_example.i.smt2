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
                   ((node (val Int) (next Addr)))))
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
(declare-fun inv_main15 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main17 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main18 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main2 (Heap) Bool)
(declare-fun inv_main21 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main22 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main23 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main24 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main25 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main27 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main30 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main31 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main33 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main34 (Heap Addr Addr Addr Int) Bool)
(declare-fun inv_main4 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main5 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main6 (Heap Addr Addr Addr) Bool)
(assert (inv_main2 emptyHeap))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main4 var3 var2 var1 var0) (is-O_node (readHeap var3 var1))) (is-O_node (readHeap var3 var1)))) (inv_main5 (writeHeap var3 var1 (O_node (node (val (getnode (readHeap var3 var1))) nullAddr))) var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main23 var8 var7 var6 var5) (= var0 (next (getnode (readHeap var8 var7))))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (= var4 var8)) (is-O_node (readHeap var8 var7)))) (inv_main21 var4 var0 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main21 var3 var2 var1 var0) (= var2 nullAddr))) (inv_main21 var3 var1 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main6 var4 var3 var2 var1) (= var0 0))) (inv_main21 var4 var2 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main22 var3 var2 var1 var0) (is-O_node (readHeap var3 var2)))) (inv_main27 var3 var2 var1 var0 (val (getnode (readHeap var3 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main24 var8 var7 var6 var5) (= var4 (val (getnode (readHeap var8 var7))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_node (readHeap var8 var7))) (not (<= 0 (+ (+ (* (- 1) var4) 20) (* (- 1) 1)))))) (inv_main31 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main5 var3 var2 var1 var0) (is-O_node (readHeap var3 var1))) (is-O_node (readHeap var3 var1)))) (inv_main6 (writeHeap var3 var1 (O_node (node 10 (next (getnode (readHeap var3 var1)))))) var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main18 var9 var8 var7 var6 var5) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (writeHeap var9 var8 (O_node (node var5 (next (getnode (readHeap var9 var8)))))))) (is-O_node (readHeap var9 var8))) (is-O_node (readHeap var9 var8)))) (inv_main6 var4 var3 var2 var3))))
(assert (forall ((var0 Int) (var1 Int) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (and (inv_main6 var5 var4 var3 var2) (not (= var0 0))) (or (<= 0 (+ (+ (* (- 1) var1) 10) (* (- 1) 1))) (<= 0 (+ (+ (* (- 1) 20) var1) (* (- 1) 1)))))) (inv_main6 var5 var4 var3 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (inv_main25 var3 var2 var1 var0)) (inv_main24 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main27 var14 var13 var12 var11 var10) (or (and (<= 0 (+ var4 (* (- 1) 10))) (= var9 1)) (and (not (<= 0 (+ var4 (* (- 1) 10)))) (= var9 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (val (getnode (readHeap var14 var13))))) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 var14)) (is-O_node (readHeap var14 var13))) (<= 0 (+ 20 (* (- 1) var10)))) (not (= var9 0)))) (inv_main24 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Addr) (var6 Addr) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main6 var12 var11 var10 var9) (not (= var0 0))) (not (<= 0 (+ (+ (* (- 1) 20) var2) (* (- 1) 1))))) (not (<= 0 (+ (+ (* (- 1) var2) 10) (* (- 1) 1))))) (= var1 (newAddr (allocHeap var12 (O_node var7))))) (= var3 var2)) (= var4 var9)) (= var5 var10)) (= var6 var11)) (= var8 (newHeap (allocHeap var12 (O_node var7)))))) (inv_main15 var8 var1 var5 var4 var3))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main21 var3 var2 var1 var0) (not (= var2 nullAddr)))) (inv_main22 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main31 var3 var2 var1 var0) (is-O_node (readHeap var3 var2)))) (inv_main34 var3 var2 var1 var0 (val (getnode (readHeap var3 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 node) (var4 Heap) (var5 Heap)) (or (not (and (and (and (inv_main2 var5) (= var0 (newAddr (allocHeap var5 (O_node var3))))) (= var2 var1)) (= var4 (newHeap (allocHeap var5 (O_node var3)))))) (inv_main4 var4 var2 var0 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main33 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var3)))) (inv_main23 (writeHeap var4 var3 (O_node (node (+ var0 1) (next (getnode (readHeap var4 var3)))))) var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int)) (or (or (not (and (inv_main34 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var3)))) (inv_main23 (writeHeap var4 var3 (O_node (node var5 (next (getnode (readHeap var4 var3)))))) var3 var2 var1)) (not (and (and (and (or (not (<= 0 (+ (+ (* (- 2) var5) var0) (* (- 1) 1)))) (<= 0 (+ var0 (* (- 1) 1)))) (<= 0 (+ (+ (* 1 (+ var0 (* (- 2) var5))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var0 (* (- 2) var5))) 2) (* (- 1) 1)))) (or (not (<= 0 (+ (* (- 1) (+ var0 (* (- 2) var5))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var0) (* (- 1) 1)))))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main30 var3 var2 var1 var0) (is-O_node (readHeap var3 var2)))) (inv_main33 var3 var2 var1 var0 (val (getnode (readHeap var3 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main17 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var3))) (is-O_node (readHeap var4 var3)))) (inv_main18 (writeHeap var4 var3 (O_node (node (val (getnode (readHeap var4 var3))) nullAddr))) var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main15 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var1))) (is-O_node (readHeap var4 var1)))) (inv_main17 (writeHeap var4 var1 (O_node (node (val (getnode (readHeap var4 var1))) var3))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main24 var8 var7 var6 var5) (= var4 (val (getnode (readHeap var8 var7))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_node (readHeap var8 var7))) (<= 0 (+ (+ (* (- 1) var4) 20) (* (- 1) 1))))) (inv_main30 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main27 var4 var3 var2 var1 var0) (not (<= 0 (+ 20 (* (- 1) var0)))))) (inv_main25 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Int) (var10 Int) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main27 var14 var13 var12 var11 var10) (or (and (<= 0 (+ var4 (* (- 1) 10))) (= var9 1)) (and (not (<= 0 (+ var4 (* (- 1) 10)))) (= var9 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (val (getnode (readHeap var14 var13))))) (= var5 var11)) (= var6 var12)) (= var7 var13)) (= var8 var14)) (is-O_node (readHeap var14 var13))) (<= 0 (+ 20 (* (- 1) var10)))) (= var9 0))) (inv_main25 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main4 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main4 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))) (is-O_node (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main5 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main5 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))) (is-O_node (readHeap var3 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main15 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main15 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var1)))) (is-O_node (readHeap var4 var1))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main17 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main17 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))) (is-O_node (readHeap var4 var3))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main18 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main18 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))) (is-O_node (readHeap var4 var3))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main22 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main27 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))) (<= 0 (+ 20 (* (- 1) var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (inv_main25 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main24 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main30 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main33 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main31 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var2)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main34 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main23 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var2)))))))
(check-sat)
