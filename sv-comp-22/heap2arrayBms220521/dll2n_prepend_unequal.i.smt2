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
                   ((node (data Int) (next Addr) (prev Addr)))))
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
(declare-fun inv_main12 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main15 (Heap Int Int Int Int Addr Addr Int) Bool)
(declare-fun inv_main18 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main19 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main22 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main35 (Heap Int Int Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main38 (Heap Int Int Addr Int Int Int Int Addr Int) Bool)
(declare-fun inv_main4 (Heap Int Int) Bool)
(declare-fun inv_main41 (Heap Int Int Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main42 (Heap Int Int Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main44 (Heap Int Int Addr Int Int Int Addr) Bool)
(declare-fun inv_main47 (Heap Int Int Addr Int Int Int Addr) Bool)
(declare-fun inv_main49 (Heap Int Int Addr Int Addr) Bool)
(declare-fun inv_main50 (Heap Int Int Addr Int Addr) Bool)
(declare-fun inv_main55 (Heap Int Int Addr Int Addr Int) Bool)
(declare-fun inv_main57 (Heap Int Int Addr Int Addr Int) Bool)
(declare-fun inv_main58 (Heap Int Int Addr Int Addr Int Addr) Bool)
(declare-fun inv_main70 (Heap Int Int Addr Int Addr Int Addr) Bool)
(declare-fun inv_main73 (Heap Int Int Addr Int Addr Int) Bool)
(declare-fun inv_main8 (Heap Int Int Int Int Addr) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0 2 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (and (inv_main49 var5 var4 var3 var2 var1 var0) (= var1 (data (getnode (readHeap var5 var0))))) (is-O_node (readHeap var5 var0)))) (inv_main50 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Int) (var11 Addr) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap) (var17 Addr) (var18 Addr) (var19 Int) (var20 Addr) (var21 Int) (var22 Addr) (var23 Int) (var24 Int) (var25 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main70 var25 var24 var23 var22 var21 var20 var19 var18) (= var17 var8)) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 (writeHeap var16 var9 defObj))) (= var8 (next (getnode (readHeap var25 var18))))) (= var9 var18)) (= var10 var19)) (= var11 var20)) (= var12 var21)) (= var13 var22)) (= var14 var23)) (= var15 var24)) (= var16 var25)) (is-O_node (readHeap var25 var18))) (not (= var17 nullAddr)))) (inv_main70 var7 var6 var5 var4 var3 var2 var1 var17))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (and (inv_main55 var6 var5 var4 var3 var2 var1 var0) (= var1 nullAddr)) (= var0 (+ 1 var5))) (not (= var3 nullAddr)))) (inv_main70 var6 var5 var4 var3 var2 var1 var0 var3))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (inv_main35 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var8 var0))) (is-O_node (readHeap var8 var0)))) (inv_main41 (writeHeap var8 var0 (O_node (node (data (getnode (readHeap var8 var0))) nullAddr (prev (getnode (readHeap var8 var0)))))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main58 var7 var6 var5 var4 var3 var2 var1 var0) (= var5 (data (getnode (readHeap var7 var2))))) (is-O_node (readHeap var7 var2)))) (inv_main55 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Int) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main50 var12 var11 var10 var9 var8 var7) (= var0 (next (getnode (readHeap var12 var7))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) (= var6 var12)) (is-O_node (readHeap var12 var7)))) (inv_main55 var6 var5 var4 var3 var2 var0 1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var6 var0))) (is-O_node (readHeap var6 var0)))) (inv_main18 (writeHeap var6 var0 (O_node (node var2 (next (getnode (readHeap var6 var0))) (prev (getnode (readHeap var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main8 var13 var12 var11 var10 var9 var8) (<= 0 (+ var10 (* (- 1) 1)))) (= var7 (newAddr (allocHeap var13 (O_node var5))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var6 (newHeap (allocHeap var13 (O_node var5))))) (= nullAddr var7))) (inv_main15 var6 var4 var3 var2 var1 var0 var7 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main19 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var6 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 (writeHeap var13 var7 (O_node (node (data (getnode (readHeap var13 var7))) (next (getnode (readHeap var13 var7))) nullAddr))))) (is-O_node (readHeap var13 var7))) (is-O_node (readHeap var13 var7))) (not (= var6 nullAddr)))) (inv_main22 var5 var4 var3 var2 var1 var6 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main57 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var6 var1)))) (inv_main58 var6 var5 var4 var3 var2 var1 var0 (next (getnode (readHeap var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var6 var0))) (is-O_node (readHeap var6 var0)))) (inv_main19 (writeHeap var6 var0 (O_node (node (data (getnode (readHeap var6 var0))) var1 (prev (getnode (readHeap var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main8 var15 var14 var13 var12 var11 var10) (not (<= 0 (+ var12 (* (- 1) 1))))) (= var9 (newAddr (allocHeap var15 (O_node var7))))) (= var0 5)) (= var1 5)) (= var2 3)) (= var3 5)) (= var4 var10)) (= var5 var13)) (= var6 var14)) (= var8 (newHeap (allocHeap var15 (O_node var7))))) (not (= nullAddr var9)))) (inv_main35 var8 var6 var5 var4 var3 var2 var1 var0 var9))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main8 var13 var12 var11 var10 var9 var8) (<= 0 (+ var10 (* (- 1) 1)))) (= var7 (newAddr (allocHeap var13 (O_node var5))))) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var6 (newHeap (allocHeap var13 (O_node var5))))) (not (= nullAddr var7)))) (inv_main12 var6 var4 var3 var2 var1 var0 var7))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main22 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 (writeHeap var13 var8 (O_node (node (data (getnode (readHeap var13 var8))) (next (getnode (readHeap var13 var8))) var7))))) (is-O_node (readHeap var13 var8))) (is-O_node (readHeap var13 var8)))) (inv_main8 var6 var5 var4 (+ var3 (* (- 1) 1)) var2 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main19 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var6 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 (writeHeap var13 var7 (O_node (node (data (getnode (readHeap var13 var7))) (next (getnode (readHeap var13 var7))) nullAddr))))) (is-O_node (readHeap var13 var7))) (is-O_node (readHeap var13 var7))) (= var6 nullAddr))) (inv_main8 var5 var4 var3 (+ var2 (* (- 1) 1)) var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Heap)) (or (not (inv_main4 var2 var1 var0)) (inv_main8 var2 var1 var0 var1 var0 nullAddr))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Addr) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main42 var17 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (= var8 (writeHeap var17 var9 (O_node (node var10 (next (getnode (readHeap var17 var9))) (prev (getnode (readHeap var17 var9)))))))) (is-O_node (readHeap var17 var9))) (is-O_node (readHeap var17 var9)))) (inv_main44 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main55 var6 var5 var4 var3 var2 var1 var0) (not (= var1 nullAddr)))) (inv_main57 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main47 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 (writeHeap var15 var12 (O_node (node (data (getnode (readHeap var15 var12))) (next (getnode (readHeap var15 var12))) var8))))) (is-O_node (readHeap var15 var12))) (is-O_node (readHeap var15 var12)))) (inv_main49 var7 var6 var5 var0 var3 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main44 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var7 var12)) (= var4 var13)) (= var5 var14)) (= var6 (writeHeap var15 var8 (O_node (node (data (getnode (readHeap var15 var8))) var12 (prev (getnode (readHeap var15 var8)))))))) (is-O_node (readHeap var15 var8))) (is-O_node (readHeap var15 var8))) (= var7 nullAddr))) (inv_main49 var6 var5 var4 var0 var3 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (inv_main38 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main38 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main8 var15 var14 var13 var12 var11 var10) (not (<= 0 (+ var12 (* (- 1) 1))))) (= var9 (newAddr (allocHeap var15 (O_node var7))))) (= var0 5)) (= var1 5)) (= var2 3)) (= var3 5)) (= var4 var10)) (= var5 var13)) (= var6 var14)) (= var8 (newHeap (allocHeap var15 (O_node var7))))) (= nullAddr var9))) (inv_main38 var8 var6 var5 var4 var3 var2 var1 var0 var9 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var8 var0))) (is-O_node (readHeap var8 var0)))) (inv_main42 (writeHeap var8 var0 (O_node (node (data (getnode (readHeap var8 var0))) (next (getnode (readHeap var8 var0))) nullAddr))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main44 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var7 var12)) (= var4 var13)) (= var5 var14)) (= var6 (writeHeap var15 var8 (O_node (node (data (getnode (readHeap var15 var8))) var12 (prev (getnode (readHeap var15 var8)))))))) (is-O_node (readHeap var15 var8))) (is-O_node (readHeap var15 var8))) (not (= var7 nullAddr)))) (inv_main47 var6 var5 var4 var7 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main58 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var5 (data (getnode (readHeap var7 var2)))))) (is-O_node (readHeap var7 var2)))) (inv_main73 var7 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main55 var6 var5 var4 var3 var2 var1 var0) (= var1 nullAddr)) (not (= var0 (+ 1 var5))))) (inv_main73 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main49 var6 var5 var4 var3 var2 var1) (not (= var2 (data (getnode (readHeap var6 var1)))))) (is-O_node (readHeap var6 var1)))) (inv_main73 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main19 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var1)))) (is-O_node (readHeap var6 var1))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main35 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main35 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main41 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main44 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))) (is-O_node (readHeap var7 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main47 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var4)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main47 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var4)))) (is-O_node (readHeap var7 var4))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main49 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var5 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main50 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var5 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main57 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main58 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main70 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (inv_main73 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
