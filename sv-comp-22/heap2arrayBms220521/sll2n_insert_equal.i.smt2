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
                   ((node (data Int) (next Addr)))))
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
(declare-fun inv_main10 (Heap Int Int Int Int Addr) Bool)
(declare-fun inv_main17 (Heap Int Int Int Int Addr Int Addr) Bool)
(declare-fun inv_main20 (Heap Int Int Int Int Addr Int Addr Int) Bool)
(declare-fun inv_main23 (Heap Int Int Int Int Addr Int Addr) Bool)
(declare-fun inv_main25 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main36 (Heap Int Int Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main39 (Heap Int Int Addr Int Int Int Int Addr Int) Bool)
(declare-fun inv_main4 (Heap Int Int) Bool)
(declare-fun inv_main42 (Heap Int Int Addr Int Int Int Int Addr) Bool)
(declare-fun inv_main46 (Heap Int Int Addr Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main49 (Heap Int Int Addr Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main52 (Heap Int Int Addr Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main53 (Heap Int Int Addr Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main56 (Heap Int Int Addr Addr Int) Bool)
(declare-fun inv_main58 (Heap Int Int Addr Addr Int) Bool)
(declare-fun inv_main59 (Heap Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main71 (Heap Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main74 (Heap Int Int Addr Addr Int) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0 2 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Heap) (var15 Addr) (var16 Addr) (var17 Int) (var18 Addr) (var19 Addr) (var20 Int) (var21 Int) (var22 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main71 var22 var21 var20 var19 var18 var17 var16) (= var15 var7)) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 (writeHeap var14 var8 defObj))) (= var7 (next (getnode (readHeap var22 var16))))) (= var8 var16)) (= var9 var17)) (= var10 var18)) (= var11 var19)) (= var12 var20)) (= var13 var21)) (= var14 var22)) (is-O_node (readHeap var22 var16))) (not (= var15 nullAddr)))) (inv_main71 var6 var5 var4 var3 var2 var1 var15))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (and (and (inv_main56 var5 var4 var3 var2 var1 var0) (= var1 nullAddr)) (= var0 (+ 1 var4))) (not (= var2 nullAddr)))) (inv_main71 var5 var4 var3 var2 var1 var0 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (inv_main46 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) 1))))) (not (= var1 nullAddr)))) (inv_main53 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 node) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main10 var14 var13 var12 var11 var10 var9) (<= 0 (+ var11 (* (- 1) 1)))) (= var8 (newAddr (allocHeap var14 (O_node var6))))) (= var0 var10)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var7 (newHeap (allocHeap var14 (O_node var6))))) (not (= nullAddr var8)))) (inv_main17 var7 var5 var4 var3 var2 var1 var0 var8))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main59 var6 var5 var4 var3 var2 var1 var0) (= var4 (data (getnode (readHeap var6 var2))))) (is-O_node (readHeap var6 var2)))) (inv_main56 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main52 var16 var15 var14 var13 var12 var11 var10 var9 var8 var7) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 (writeHeap var16 var9 (O_node (node (data (getnode (readHeap var16 var9))) var7))))) (is-O_node (readHeap var16 var9))) (is-O_node (readHeap var16 var9)))) (inv_main56 var6 var5 var4 var3 var3 0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var7 var0))) (is-O_node (readHeap var7 var0)))) (inv_main23 (writeHeap var7 var0 (O_node (node (data (getnode (readHeap var7 var0))) nullAddr))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main56 var5 var4 var3 var2 var1 var0) (not (= var1 nullAddr)))) (inv_main58 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main23 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 (writeHeap var15 var8 (O_node (node var9 (next (getnode (readHeap var15 var8)))))))) (is-O_node (readHeap var15 var8))) (is-O_node (readHeap var15 var8)))) (inv_main25 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main25 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 (writeHeap var13 var7 (O_node (node (data (getnode (readHeap var13 var7))) var8))))) (is-O_node (readHeap var13 var7))) (is-O_node (readHeap var13 var7)))) (inv_main10 var6 var5 var4 (+ var3 (* (- 1) 1)) var2 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Heap) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (and (and (and (and (inv_main4 var8 var7 var6) (= var0 nullAddr)) (= var1 var6)) (= var2 var7)) (= var3 var6)) (= var4 var7)) (= var5 var8))) (inv_main10 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Int) (var15 Int) (var16 Int) (var17 Addr) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main49 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11) (= var0 (next (getnode (readHeap var20 var11))))) (= var1 var11)) (= var2 var12)) (= var3 var13)) (= var4 var14)) (= var5 var15)) (= var6 var16)) (= var7 var17)) (= var8 var18)) (= var9 var19)) (= var10 var20)) (is-O_node (readHeap var20 var11)))) (inv_main46 var10 var9 var8 var7 var6 var5 (+ var4 (* (- 1) 1)) var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap) (var17 Heap) (var18 Addr) (var19 Int) (var20 Int) (var21 Int) (var22 Int) (var23 Addr) (var24 Int) (var25 Int) (var26 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main42 var26 var25 var24 var23 var22 var21 var20 var19 var18) (= var2 var18)) (= var0 var19)) (= var4 var20)) (= var6 var21)) (= var8 var22)) (= var10 var23)) (= var12 var24)) (= var14 var25)) (= var16 (writeHeap var26 var18 (O_node (node var19 (next (getnode (readHeap var26 var18)))))))) (is-O_node (readHeap var26 var18))) (is-O_node (readHeap var26 var18))) (= var1 nullAddr)) (= var3 var2)) (= var5 var4)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (= var15 var14)) (= var17 var16))) (inv_main46 var17 var15 var13 var11 var9 var7 var5 var3 var1 var11))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (inv_main53 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var9 var1))) (is-O_node (readHeap var9 var1)))) (inv_main52 (writeHeap var9 var1 (O_node (node (data (getnode (readHeap var9 var1))) var2))) var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (and (inv_main46 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) 1))))) (= var1 nullAddr))) (inv_main52 var9 var8 var7 var2 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 node) (var14 Heap) (var15 Heap) (var16 Addr) (var17 Addr) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Heap) (var23 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main10 var22 var21 var20 var19 var18 var17) (not (<= 0 (+ var19 (* (- 1) 1))))) (= var1 var23)) (or (not (<= 0 (+ (* (- 1) (+ var21 (* (- 2) var23))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var21) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var23) var21) (* (- 1) 1)))) (<= 0 (+ var21 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var21 (* (- 2) var23))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var21 (* (- 2) var23))) 2) (* (- 1) 1)))) (= var3 var20)) (= var5 3)) (= var7 var17)) (= var9 var20)) (= var11 var21)) (= var14 var22)) (= var16 (newAddr (allocHeap var14 (O_node var13))))) (= var0 var3)) (= var2 var1)) (= var4 var3)) (= var6 var5)) (= var8 var7)) (= var10 var9)) (= var12 var11)) (= var15 (newHeap (allocHeap var14 (O_node var13))))) (not (= nullAddr var16)))) (inv_main36 var15 var12 var10 var8 var6 var4 var2 var0 var16))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (and (inv_main46 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var3 (* (- 1) 1))))) (inv_main49 var9 var8 var7 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var8 var0))) (is-O_node (readHeap var8 var0)))) (inv_main42 (writeHeap var8 var0 (O_node (node (data (getnode (readHeap var8 var0))) nullAddr))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (inv_main20 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main20 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 node) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main10 var14 var13 var12 var11 var10 var9) (<= 0 (+ var11 (* (- 1) 1)))) (= var8 (newAddr (allocHeap var14 (O_node var6))))) (= var0 var10)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var7 (newHeap (allocHeap var14 (O_node var6))))) (= nullAddr var8))) (inv_main20 var7 var5 var4 var3 var2 var1 var0 var8 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (inv_main58 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var5 var1)))) (inv_main59 var5 var4 var3 var2 var1 var0 (next (getnode (readHeap var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main59 var6 var5 var4 var3 var2 var1 var0) (not (= var4 (data (getnode (readHeap var6 var2)))))) (is-O_node (readHeap var6 var2)))) (inv_main74 var6 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (or (not (and (and (inv_main56 var5 var4 var3 var2 var1 var0) (= var1 nullAddr)) (not (= var0 (+ 1 var4))))) (inv_main74 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (or (not (inv_main39 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main39 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 node) (var14 Heap) (var15 Heap) (var16 Addr) (var17 Addr) (var18 Int) (var19 Int) (var20 Int) (var21 Int) (var22 Heap) (var23 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main10 var22 var21 var20 var19 var18 var17) (not (<= 0 (+ var19 (* (- 1) 1))))) (= var1 var23)) (or (not (<= 0 (+ (* (- 1) (+ var21 (* (- 2) var23))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var21) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var23) var21) (* (- 1) 1)))) (<= 0 (+ var21 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var21 (* (- 2) var23))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var21 (* (- 2) var23))) 2) (* (- 1) 1)))) (= var3 var20)) (= var5 3)) (= var7 var17)) (= var9 var20)) (= var11 var21)) (= var14 var22)) (= var16 (newAddr (allocHeap var14 (O_node var13))))) (= var0 var3)) (= var2 var1)) (= var4 var3)) (= var6 var5)) (= var8 var7)) (= var10 var9)) (= var12 var11)) (= var15 (newHeap (allocHeap var14 (O_node var13))))) (= nullAddr var16))) (inv_main39 var15 var12 var10 var8 var6 var4 var2 var0 var16 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main17 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))) (is-O_node (readHeap var7 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main23 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))) (is-O_node (readHeap var7 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main25 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main25 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main36 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main42 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (inv_main49 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var9 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (inv_main53 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var9 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (and (inv_main53 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var9 var1)))) (is-O_node (readHeap var9 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (inv_main52 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var9 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (and (inv_main52 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var9 var2)))) (is-O_node (readHeap var9 var2))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (and (inv_main58 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main59 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var2)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main71 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Heap)) (not (inv_main74 var5 var4 var3 var2 var1 var0))))
(check-sat)
