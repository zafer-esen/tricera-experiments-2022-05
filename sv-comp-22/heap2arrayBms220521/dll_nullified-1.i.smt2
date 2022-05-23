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
                   ((node (data_0 Int) (next Addr) (data_1 Int) (prev Addr) (data_2 Int)))))
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
(declare-fun inv_main11 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main14 (Heap Int Int Addr Addr Int) Bool)
(declare-fun inv_main17 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main19 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main21 (Heap Int Int Addr Addr Int) Bool)
(declare-fun inv_main22 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main25 (Heap Int Int Addr Addr) Bool)
(declare-fun inv_main28 (Heap Int Addr) Bool)
(declare-fun inv_main3 (Heap Int) Bool)
(declare-fun inv_main30 (Heap Int Addr) Bool)
(declare-fun inv_main31 (Heap Int Addr) Bool)
(declare-fun inv_main34 (Heap Int Addr Int) Bool)
(declare-fun inv_main36 (Heap Int Addr Int) Bool)
(declare-fun inv_main41 (Heap Int Addr) Bool)
(declare-fun inv_main42 (Heap Int Addr Addr) Bool)
(declare-fun inv_main46 (Heap Int Addr Addr Int) Bool)
(declare-fun inv_main48 (Heap Int Addr Addr Int) Bool)
(declare-fun inv_main52 (Heap Int Addr) Bool)
(declare-fun inv_main7 (Heap Int Int Addr) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main3 var0 5))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Heap)) (or (not (and (inv_main48 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main52 var4 var3 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main48 var9 var8 var7 var6 var5) (or (and (not (= 0 (data_2 (getnode (readHeap var9 var7))))) (= var4 1)) (and (= 0 (data_2 (getnode (readHeap var9 var7)))) (= var4 0)))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (is-O_node (readHeap var9 var7))) (= var5 0)) (not (= var4 0)))) (inv_main52 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (or (not (and (inv_main36 var3 var2 var1 var0) (not (= var0 0)))) (inv_main52 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main36 var7 var6 var5 var4) (or (and (not (= 0 (data_2 (getnode (readHeap var7 var5))))) (= var3 1)) (and (= 0 (data_2 (getnode (readHeap var7 var5)))) (= var3 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_node (readHeap var7 var5))) (= var4 0)) (not (= var3 0)))) (inv_main52 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (or (not (and (and (and (inv_main28 var2 var1 var0) (= (next (getnode (readHeap var2 var0))) nullAddr)) (is-O_node (readHeap var2 var0))) (not (= var0 nullAddr)))) (inv_main41 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Int) (var6 Heap) (var7 Int) (var8 Addr) (var9 Int) (var10 Addr) (var11 Addr) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main48 var13 var12 var11 var10 var9) (= var8 var3)) (= var0 var4)) (= var1 var5)) (= var2 (writeHeap var6 var4 defObj))) (or (and (not (= 0 (data_2 (getnode (readHeap var13 var11))))) (= var7 1)) (and (= 0 (data_2 (getnode (readHeap var13 var11)))) (= var7 0)))) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 var13)) (is-O_node (readHeap var13 var11))) (= var9 0)) (= var7 0)) (not (= var8 nullAddr)))) (inv_main41 var2 var1 var8))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (or (not (and (inv_main41 var2 var1 var0) (is-O_node (readHeap var2 var0)))) (inv_main42 var2 var1 var0 (prev (getnode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main17 var10 var9 var8 var7 var6) (= var0 var6)) (= var1 var7)) (= var4 var8)) (= var2 var9)) (= var3 (writeHeap var10 var6 (O_node (node (data_0 (getnode (readHeap var10 var6))) (next (getnode (readHeap var10 var6))) 0 (prev (getnode (readHeap var10 var6))) (data_2 (getnode (readHeap var10 var6)))))))) (is-O_node (readHeap var10 var6))) (is-O_node (readHeap var10 var6))) (= var5 var4))) (inv_main21 var3 var2 var4 var1 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main17 var10 var9 var8 var7 var6) (= var0 var6)) (= var1 var7)) (= var4 var8)) (= var2 var9)) (= var3 (writeHeap var10 var6 (O_node (node (data_0 (getnode (readHeap var10 var6))) (next (getnode (readHeap var10 var6))) 0 (prev (getnode (readHeap var10 var6))) (data_2 (getnode (readHeap var10 var6)))))))) (is-O_node (readHeap var10 var6))) (is-O_node (readHeap var10 var6))) (not (= var5 var4)))) (inv_main21 var3 var2 var4 var1 var0 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main11 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var0))) (is-O_node (readHeap var4 var0)))) (inv_main17 (writeHeap var4 var0 (O_node (node 0 (next (getnode (readHeap var4 var0))) (data_1 (getnode (readHeap var4 var0))) (prev (getnode (readHeap var4 var0))) (data_2 (getnode (readHeap var4 var0)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main25 var9 var8 var7 var6 var5) (= var0 var5)) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 (writeHeap var9 var6 (O_node (node (data_0 (getnode (readHeap var9 var6))) (next (getnode (readHeap var9 var6))) (data_1 (getnode (readHeap var9 var6))) var5 (data_2 (getnode (readHeap var9 var6)))))))) (is-O_node (readHeap var9 var6))) (is-O_node (readHeap var9 var6)))) (inv_main7 var4 var3 (+ var2 (* (- 1) 1)) var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main22 var9 var8 var7 var6 var5) (= var0 var5)) (= var4 var6)) (= var1 var7)) (= var2 var8)) (= var3 (writeHeap var9 var5 (O_node (node (data_0 (getnode (readHeap var9 var5))) (next (getnode (readHeap var9 var5))) (data_1 (getnode (readHeap var9 var5))) nullAddr (data_2 (getnode (readHeap var9 var5)))))))) (is-O_node (readHeap var9 var5))) (is-O_node (readHeap var9 var5))) (= var4 nullAddr))) (inv_main7 var3 var2 (+ var1 (* (- 1) 1)) var0))))
(assert (forall ((var0 Int) (var1 Heap)) (or (not (inv_main3 var1 var0)) (inv_main7 var1 var0 var0 nullAddr))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Heap)) (or (not (and (inv_main46 var4 var3 var2 var1 var0) (not (= var0 0)))) (inv_main48 var4 var3 var2 var1 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main46 var9 var8 var7 var6 var5) (or (and (not (= 0 (data_1 (getnode (readHeap var9 var7))))) (= var0 1)) (and (= 0 (data_1 (getnode (readHeap var9 var7)))) (= var0 0)))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (is-O_node (readHeap var9 var7))) (= var5 0))) (inv_main48 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 node) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main7 var9 var8 var7 var6) (<= 0 (+ var7 (* (- 1) 1)))) (= var5 (newAddr (allocHeap var9 (O_node var3))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var4 (newHeap (allocHeap var9 (O_node var3))))) (not (= nullAddr var5)))) (inv_main11 var4 var2 var1 var0 var5))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (or (not (and (and (inv_main19 var4 var3 var2 var1 var0) (is-O_node (readHeap var4 var0))) (is-O_node (readHeap var4 var0)))) (inv_main22 (writeHeap var4 var0 (O_node (node (data_0 (getnode (readHeap var4 var0))) var1 (data_1 (getnode (readHeap var4 var0))) (prev (getnode (readHeap var4 var0))) (data_2 (getnode (readHeap var4 var0)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main36 var7 var6 var5 var4) (or (and (not (= 0 (data_2 (getnode (readHeap var7 var5))))) (= var3 1)) (and (= 0 (data_2 (getnode (readHeap var7 var5)))) (= var3 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_node (readHeap var7 var5))) (= var4 0)) (= var3 0))) (inv_main31 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (or (not (and (inv_main30 var2 var1 var0) (is-O_node (readHeap var2 var0)))) (and (or (not (not (= 0 (data_0 (getnode (readHeap var2 var0)))))) (inv_main34 var2 var1 var0 1)) (or (not (= 0 (data_0 (getnode (readHeap var2 var0))))) (inv_main34 var2 var1 var0 0))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (or (not (and (inv_main34 var3 var2 var1 var0) (not (= var0 0)))) (inv_main36 var3 var2 var1 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap) (var4 Int) (var5 Addr) (var6 Int) (var7 Heap)) (or (not (and (and (and (and (and (and (inv_main34 var7 var6 var5 var4) (or (and (not (= 0 (data_1 (getnode (readHeap var7 var5))))) (= var0 1)) (and (= 0 (data_1 (getnode (readHeap var7 var5)))) (= var0 0)))) (= var1 var5)) (= var2 var6)) (= var3 var7)) (is-O_node (readHeap var7 var5))) (= var4 0))) (inv_main36 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (or (not (and (and (inv_main28 var2 var1 var0) (not (= (next (getnode (readHeap var2 var0))) nullAddr))) (is-O_node (readHeap var2 var0)))) (inv_main30 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (and (inv_main21 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var5 var1))) (is-O_node (readHeap var5 var1)))) (inv_main19 (writeHeap var5 var1 (O_node (node (data_0 (getnode (readHeap var5 var1))) (next (getnode (readHeap var5 var1))) (data_1 (getnode (readHeap var5 var1))) (prev (getnode (readHeap var5 var1))) var0))) var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap)) (or (not (and (inv_main42 var3 var2 var1 var0) (is-O_node (readHeap var3 var1)))) (and (or (not (not (= 0 (data_0 (getnode (readHeap var3 var1)))))) (inv_main46 var3 var2 var1 var0 1)) (or (not (= 0 (data_0 (getnode (readHeap var3 var1))))) (inv_main46 var3 var2 var1 var0 0))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (inv_main14 var5 var4 var3 var2 var1 var0)) (inv_main14 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 node) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (inv_main7 var9 var8 var7 var6) (<= 0 (+ var7 (* (- 1) 1)))) (= var5 (newAddr (allocHeap var9 (O_node var3))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var4 (newHeap (allocHeap var9 (O_node var3))))) (= nullAddr var5))) (inv_main14 var4 var2 var1 var0 var5 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main22 var9 var8 var7 var6 var5) (= var0 var5)) (= var4 var6)) (= var1 var7)) (= var2 var8)) (= var3 (writeHeap var9 var5 (O_node (node (data_0 (getnode (readHeap var9 var5))) (next (getnode (readHeap var9 var5))) (data_1 (getnode (readHeap var9 var5))) nullAddr (data_2 (getnode (readHeap var9 var5)))))))) (is-O_node (readHeap var9 var5))) (is-O_node (readHeap var9 var5))) (not (= var4 nullAddr)))) (inv_main25 var3 var2 var1 var4 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap) (var4 Addr) (var5 Int) (var6 Heap)) (or (not (and (and (and (and (and (inv_main31 var6 var5 var4) (= var0 (next (getnode (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_node (readHeap var6 var4)))) (inv_main28 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Heap)) (or (not (and (inv_main7 var3 var2 var1 var0) (not (<= 0 (+ var1 (* (- 1) 1)))))) (inv_main28 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main11 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main11 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))) (is-O_node (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main17 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main17 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))) (is-O_node (readHeap var4 var0))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main21 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var5 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (and (inv_main21 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var5 var1)))) (is-O_node (readHeap var5 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main19 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main19 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))) (is-O_node (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main22 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main22 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var0)))) (is-O_node (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (inv_main25 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Heap)) (not (and (and (inv_main25 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var1)))) (is-O_node (readHeap var4 var1))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (not (and (inv_main28 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (not (and (inv_main30 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (not (and (and (inv_main34 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))) (= var0 0)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Heap)) (not (and (and (inv_main36 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))) (= var0 0)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (not (and (inv_main31 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (not (and (inv_main41 var2 var1 var0) (not (is-O_node (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Heap)) (not (and (inv_main42 var3 var2 var1 var0) (not (is-O_node (readHeap var3 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Heap)) (not (and (and (inv_main46 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var2)))) (= var0 0)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Heap)) (not (and (and (inv_main48 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var4 var2)))) (= var0 0)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Heap)) (not (inv_main52 var2 var1 var0))))
(check-sat)
