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
                   ((node (next Addr) (data Int)))))
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
(declare-fun inv_main103 (Heap Int Int Addr Int Int Addr Int Addr) Bool)
(declare-fun inv_main107 (Heap Int Int Addr Int Int Addr Int Addr Addr) Bool)
(declare-fun inv_main110 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main12 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main15 (Heap Int Int Int Int Int Addr Int) Bool)
(declare-fun inv_main18 (Heap Int Int Int Int Int Addr) Bool)
(declare-fun inv_main21 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main22 (Heap Int Int Int Int Addr Addr) Bool)
(declare-fun inv_main28 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main31 (Heap Int Int Int Int Addr Addr Int Addr Int) Bool)
(declare-fun inv_main34 (Heap Int Int Int Int Addr Addr Int Addr) Bool)
(declare-fun inv_main36 (Heap Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main4 (Heap Int Int) Bool)
(declare-fun inv_main51 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main54 (Heap Int Int Addr Int Int Int Int Int Int Addr Int) Bool)
(declare-fun inv_main57 (Heap Int Int Addr Int Int Int Int Int Int Addr) Bool)
(declare-fun inv_main61 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main64 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main67 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main69 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main71 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main72 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main73 (Heap Int Int Addr Int Int Int Int Int Addr Addr Addr) Bool)
(declare-fun inv_main75 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main76 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main78 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main83 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main88 (Heap Int Int Addr Int Int Addr Int) Bool)
(declare-fun inv_main91 (Heap Int Int Addr Int Int Addr Int) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0 2 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main91 var16 var15 var14 var13 var12 var11 var10 var9) (= var5 (next (getnode (readHeap var16 var10))))) (= var7 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var8 var13)) (= var3 var14)) (= var6 var15)) (= var4 var16)) (is-O_node (readHeap var16 var10))) (= var5 var8)) (= (+ var7 1) (+ 1 var6))) (not (= nullAddr var8)))) (inv_main103 var4 var6 var3 var8 var2 var1 var5 (+ var7 1) var8))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (inv_main51 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var10 var0))) (is-O_node (readHeap var10 var0)))) (inv_main57 (writeHeap var10 var0 (O_node (node nullAddr (data (getnode (readHeap var10 var0)))))) var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main78 var16 var15 var14 var13 var12 var11 var10 var9) (= var8 (next (getnode (readHeap var16 var10))))) (= var6 var9)) (= var0 var10)) (= var5 var11)) (= var1 var12)) (= var7 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (is-O_node (readHeap var16 var10))) (not (= (+ var6 1) var5))) (not (= var8 var7)))) (inv_main75 var4 var3 var2 var7 var1 var5 var8 (+ var6 1)))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Addr) (var18 Int) (var19 Int) (var20 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main69 var20 var19 var18 var17 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 var12)) (= var1 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (= var5 var17)) (= var6 var18)) (= var7 var19)) (= var8 (writeHeap var20 var11 (O_node (node var9 (data (getnode (readHeap var20 var11)))))))) (is-O_node (readHeap var20 var11))) (is-O_node (readHeap var20 var11)))) (inv_main75 var8 var7 var6 var5 var4 var3 var5 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main73 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (= var0 var12)) (= var1 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (= var5 var17)) (= var6 var18)) (= var7 var19)) (= var8 var20)) (= var9 var21)) (= var10 var22)) (= var11 (writeHeap var23 var20 (O_node (node var14 (data (getnode (readHeap var23 var20)))))))) (is-O_node (readHeap var23 var20))) (is-O_node (readHeap var23 var20)))) (inv_main75 var11 var10 var9 var2 var7 var6 var2 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Int) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Addr) (var21 Int) (var22 Int) (var23 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main72 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13 var12) (= var0 var12)) (= var1 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (= var5 var17)) (= var6 var18)) (= var7 var19)) (= var8 var20)) (= var9 var21)) (= var10 var22)) (= var11 (writeHeap var23 var14 (O_node (node var14 (data (getnode (readHeap var23 var14)))))))) (is-O_node (readHeap var23 var14))) (is-O_node (readHeap var23 var14)))) (inv_main75 var11 var10 var9 var2 var7 var6 var2 0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (and (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var11 var1))) (is-O_node (readHeap var11 var1)))) (inv_main69 (writeHeap var11 var1 (O_node (node var2 (data (getnode (readHeap var11 var1)))))) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main76 var7 var6 var5 var4 var3 var2 var1 var0) (= var3 (data (getnode (readHeap var7 var1))))) (is-O_node (readHeap var7 var1)))) (inv_main83 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (or (not (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main15 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main4 var10 var9 var8) (= var7 (newAddr (allocHeap var10 (O_node var5))))) (= var0 var8)) (= var1 var8)) (= var2 var9)) (= var3 var8)) (= var4 var9)) (= var6 (newHeap (allocHeap var10 (O_node var5))))) (= nullAddr var7))) (inv_main15 var6 var4 var3 var2 var1 var0 var7 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main83 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 (next (getnode (readHeap var16 var10))))) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 var15)) (= var8 var16)) (is-O_node (readHeap var16 var10)))) (inv_main88 var8 var7 var6 var5 var4 var3 var0 (+ var1 1)))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main91 var16 var15 var14 var13 var12 var11 var10 var9) (= var8 (next (getnode (readHeap var16 var10))))) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var7 var13)) (= var4 var14)) (= var5 var15)) (= var6 var16)) (is-O_node (readHeap var16 var10))) (not (= var8 var7)))) (inv_main88 var6 var5 var4 var7 var3 var2 var8 (+ var0 1)))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (and (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) 1))))) (= var1 nullAddr)) (not (= var8 nullAddr)))) (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Heap)) (or (not (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main31 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main21 var16 var15 var14 var13 var12 var11 var10) (<= 0 (+ (+ (* (- 1) 1) var13) (* (- 1) 1)))) (= var9 (newAddr (allocHeap var16 (O_node var7))))) (= var0 var12)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var8 (newHeap (allocHeap var16 (O_node var7))))) (= nullAddr var9))) (inv_main31 var8 var6 var5 var4 var3 var2 var1 var0 var9 1))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 node) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Int) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main21 var16 var15 var14 var13 var12 var11 var10) (<= 0 (+ (+ (* (- 1) 1) var13) (* (- 1) 1)))) (= var9 (newAddr (allocHeap var16 (O_node var7))))) (= var0 var12)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var8 (newHeap (allocHeap var16 (O_node var7))))) (not (= nullAddr var9)))) (inv_main28 var8 var6 var5 var4 var3 var2 var1 var0 var9))))
(assert (forall ((var0 Int) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 node) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main4 var10 var9 var8) (= var7 (newAddr (allocHeap var10 (O_node var5))))) (= var0 var8)) (= var1 var8)) (= var2 var9)) (= var3 var8)) (= var4 var9)) (= var6 (newHeap (allocHeap var10 (O_node var5))))) (not (= nullAddr var7)))) (inv_main12 var6 var4 var3 var2 var1 var0 var7))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 node) (var22 Heap) (var23 Heap) (var24 Addr) (var25 Addr) (var26 Addr) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Heap) (var32 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main22 var31 var30 var29 var28 var27 var26 var25) (= var0 var25)) (= var3 var26)) (= var1 var27)) (= var2 var28)) (= var4 var29)) (= var5 var30)) (= var6 (writeHeap var31 var25 (O_node (node var26 (data (getnode (readHeap var31 var25)))))))) (is-O_node (readHeap var31 var25))) (is-O_node (readHeap var31 var25))) (= var11 var32)) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var32))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var32) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var32))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var32))) 2) (* (- 1) 1)))) (= var13 5)) (= var15 var3)) (= var17 var4)) (= var19 var5)) (= var22 var6)) (= var24 (newAddr (allocHeap var22 (O_node var21))))) (= var7 var13)) (= var8 var11)) (= var9 var13)) (= var10 3)) (= var12 var11)) (= var14 var13)) (= var16 var15)) (= var18 var17)) (= var20 var19)) (= var23 (newHeap (allocHeap var22 (O_node var21))))) (not (= nullAddr var24)))) (inv_main51 var23 var20 var18 var16 var14 var12 var10 var9 var8 var7 var24))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (inv_main21 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ (+ (* (- 1) 1) var3) (* (- 1) 1)))))) (inv_main22 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (and (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) 1))))) (= var1 nullAddr)) (= var8 nullAddr))) (inv_main72 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (or (not (and (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var6 var0))) (is-O_node (readHeap var6 var0)))) (inv_main18 (writeHeap var6 var0 (O_node (node nullAddr (data (getnode (readHeap var6 var0)))))) var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (and (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var11 var2))) (is-O_node (readHeap var11 var2)))) (inv_main73 (writeHeap var11 var2 (O_node (node var8 (data (getnode (readHeap var11 var2)))))) var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0)) (inv_main54 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Heap) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Addr) (var16 Addr) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 node) (var22 Heap) (var23 Heap) (var24 Addr) (var25 Addr) (var26 Addr) (var27 Int) (var28 Int) (var29 Int) (var30 Int) (var31 Heap) (var32 Int)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main22 var31 var30 var29 var28 var27 var26 var25) (= var0 var25)) (= var3 var26)) (= var1 var27)) (= var2 var28)) (= var4 var29)) (= var5 var30)) (= var6 (writeHeap var31 var25 (O_node (node var26 (data (getnode (readHeap var31 var25)))))))) (is-O_node (readHeap var31 var25))) (is-O_node (readHeap var31 var25))) (= var11 var32)) (or (not (<= 0 (+ (* (- 1) (+ var5 (* (- 2) var32))) (* (- 1) 1)))) (<= 0 (+ (* (- 1) var5) (* (- 1) 1))))) (or (not (<= 0 (+ (+ (* (- 2) var32) var5) (* (- 1) 1)))) (<= 0 (+ var5 (* (- 1) 1))))) (<= 0 (+ (+ (* 1 (+ var5 (* (- 2) var32))) 2) (* (- 1) 1)))) (<= 0 (+ (+ (* (- 1) (+ var5 (* (- 2) var32))) 2) (* (- 1) 1)))) (= var13 5)) (= var15 var3)) (= var17 var4)) (= var19 var5)) (= var22 var6)) (= var24 (newAddr (allocHeap var22 (O_node var21))))) (= var7 var13)) (= var8 var11)) (= var9 var13)) (= var10 3)) (= var12 var11)) (= var14 var13)) (= var16 var15)) (= var18 var17)) (= var20 var19)) (= var23 (newHeap (allocHeap var22 (O_node var21))))) (= nullAddr var24))) (inv_main54 var23 var20 var18 var16 var14 var12 var10 var9 var8 var7 var24 1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (or (not (and (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_node (readHeap var8 var0))) (is-O_node (readHeap var8 var0)))) (inv_main34 (writeHeap var8 var0 (O_node (node nullAddr (data (getnode (readHeap var8 var0)))))) var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main88 var7 var6 var5 var4 var3 var2 var1 var0) (= var5 (data (getnode (readHeap var7 var1))))) (is-O_node (readHeap var7 var1)))) (inv_main91 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (<= 0 (+ var3 (* (- 1) 1))))) (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var5 (data (getnode (readHeap var7 var1)))))) (is-O_node (readHeap var7 var1)))) (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main76 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var3 (data (getnode (readHeap var7 var1)))))) (is-O_node (readHeap var7 var1)))) (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main88 var7 var6 var5 var4 var3 var2 var1 var0) (not (= var5 (data (getnode (readHeap var7 var1)))))) (is-O_node (readHeap var7 var1)))) (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 Int) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main91 var16 var15 var14 var13 var12 var11 var10 var9) (= var6 (next (getnode (readHeap var16 var10))))) (= var8 var9)) (= var0 var10)) (= var1 var11)) (= var2 var12)) (= var5 var13)) (= var3 var14)) (= var7 var15)) (= var4 var16)) (is-O_node (readHeap var16 var10))) (= var6 var5)) (not (= (+ var8 1) (+ 1 var7))))) (inv_main110 var4 var7 var3 var5 var2 var1 var6 (+ var8 1)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Heap) (var5 Int) (var6 Int) (var7 Addr) (var8 Addr) (var9 Int) (var10 Addr) (var11 Int) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main78 var16 var15 var14 var13 var12 var11 var10 var9) (= var8 (next (getnode (readHeap var16 var10))))) (= var6 var9)) (= var0 var10)) (= var5 var11)) (= var1 var12)) (= var7 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (is-O_node (readHeap var16 var10))) (or (= var8 var7) (= (+ var6 1) var5)))) (inv_main76 var4 var3 var2 var7 var1 var5 var8 (+ var6 1)))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Int) (var11 Addr) (var12 Addr) (var13 Int) (var14 Int) (var15 Int) (var16 Int) (var17 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main34 var17 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (= var8 (writeHeap var17 var9 (O_node (node (next (getnode (readHeap var17 var9))) var10))))) (is-O_node (readHeap var17 var9))) (is-O_node (readHeap var17 var9)))) (inv_main36 var8 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Addr) (var10 Int) (var11 Int) (var12 Heap) (var13 Addr) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Int) (var21 Addr) (var22 Int) (var23 Int) (var24 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main64 var24 var23 var22 var21 var20 var19 var18 var17 var16 var15 var14 var13) (= var0 (next (getnode (readHeap var24 var13))))) (= var1 var13)) (= var2 var14)) (= var3 var15)) (= var4 var16)) (= var5 var17)) (= var6 var18)) (= var7 var19)) (= var8 var20)) (= var9 var21)) (= var10 var22)) (= var11 var23)) (= var12 var24)) (is-O_node (readHeap var24 var13)))) (inv_main61 var12 var11 var10 var9 var8 var7 var6 var5 (+ var4 (* (- 1) 1)) var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Int) (var14 Addr) (var15 Addr) (var16 Int) (var17 Int) (var18 Int) (var19 Int) (var20 Heap) (var21 Heap) (var22 Addr) (var23 Int) (var24 Int) (var25 Int) (var26 Int) (var27 Int) (var28 Int) (var29 Addr) (var30 Int) (var31 Int) (var32 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main57 var32 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (= var2 var22)) (= var0 var23)) (= var4 var24)) (= var6 var25)) (= var8 var26)) (= var10 var27)) (= var12 var28)) (= var14 var29)) (= var16 var30)) (= var18 var31)) (= var20 (writeHeap var32 var22 (O_node (node (next (getnode (readHeap var32 var22))) var23))))) (is-O_node (readHeap var32 var22))) (is-O_node (readHeap var32 var22))) (= var1 nullAddr)) (= var3 var2)) (= var5 var4)) (= var7 var6)) (= var9 var8)) (= var11 var10)) (= var13 var12)) (= var15 var14)) (= var17 var16)) (= var19 var18)) (= var21 var20))) (inv_main61 var21 var19 var17 var15 var13 var11 var9 var7 var5 var3 var1 var15))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Int) (var13 Int) (var14 Int) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main36 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 (writeHeap var15 var8 (O_node (node var10 (data (getnode (readHeap var15 var8)))))))) (is-O_node (readHeap var15 var8))) (is-O_node (readHeap var15 var8)))) (inv_main21 var7 var6 var5 (+ var4 (* (- 1) 1)) var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap) (var7 Addr) (var8 Int) (var9 Int) (var10 Int) (var11 Int) (var12 Int) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main18 var13 var12 var11 var10 var9 var8 var7) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 var11)) (= var5 var12)) (= var6 (writeHeap var13 var7 (O_node (node (next (getnode (readHeap var13 var7))) var8))))) (is-O_node (readHeap var13 var7))) (is-O_node (readHeap var13 var7)))) (inv_main21 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 Addr) (var13 Int) (var14 Int) (var15 Addr) (var16 Int) (var17 Int) (var18 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (inv_main103 var18 var17 var16 var15 var14 var13 var12 var11 var10) (= var9 (next (getnode (readHeap var18 var10))))) (= var8 var10)) (= var0 var11)) (= var1 var12)) (= var2 var13)) (= var3 var14)) (= var4 var15)) (= var5 var16)) (= var6 var17)) (= var7 var18)) (is-O_node (readHeap var18 var10))) (not (= var9 var8)))) (inv_main107 var7 var6 var5 var4 var3 var2 var1 var0 var8 var9))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 Addr) (var14 Int) (var15 Int) (var16 Addr) (var17 Int) (var18 Int) (var19 Heap) (var20 Addr) (var21 Addr) (var22 Addr) (var23 Addr) (var24 Int) (var25 Addr) (var26 Int) (var27 Int) (var28 Addr) (var29 Int) (var30 Int) (var31 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main107 var31 var30 var29 var28 var27 var26 var25 var24 var23 var22) (= var21 var9)) (= var0 var10)) (= var20 var11)) (= var1 var12)) (= var2 var13)) (= var3 var14)) (= var4 var15)) (= var5 var16)) (= var6 var17)) (= var7 var18)) (= var8 (writeHeap var19 var10 defObj))) (= var9 (next (getnode (readHeap var31 var22))))) (= var10 var22)) (= var11 var23)) (= var12 var24)) (= var13 var25)) (= var14 var26)) (= var15 var27)) (= var16 var28)) (= var17 var29)) (= var18 var30)) (= var19 var31)) (is-O_node (readHeap var31 var22))) (not (= var21 var20)))) (inv_main107 var8 var7 var6 var5 var4 var3 var2 var1 var20 var21))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (or (not (and (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (= var5 (data (getnode (readHeap var7 var1))))) (is-O_node (readHeap var7 var1)))) (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (or (not (and (and (inv_main61 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (<= 0 (+ var3 (* (- 1) 1))))) (not (= var1 nullAddr)))) (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main12 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main18 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main28 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Addr) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Heap)) (not (and (and (inv_main34 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))) (is-O_node (readHeap var8 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Heap)) (not (and (and (inv_main36 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var0)))) (is-O_node (readHeap var7 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Heap)) (not (and (and (inv_main22 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var6 var0)))) (is-O_node (readHeap var6 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main51 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (and (inv_main51 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var10 var0)))) (is-O_node (readHeap var10 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (inv_main57 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var10 var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Int) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Addr) (var8 Int) (var9 Int) (var10 Heap)) (not (and (and (inv_main57 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var10 var0)))) (is-O_node (readHeap var10 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main64 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (and (inv_main67 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var1)))) (is-O_node (readHeap var11 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main69 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (and (inv_main69 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var2)))) (is-O_node (readHeap var11 var2))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (and (inv_main71 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var2)))) (is-O_node (readHeap var11 var2))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var8)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (and (inv_main73 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var8)))) (is-O_node (readHeap var11 var8))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (inv_main72 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 Int) (var5 Int) (var6 Int) (var7 Int) (var8 Addr) (var9 Int) (var10 Int) (var11 Heap)) (not (and (and (inv_main72 var11 var10 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var11 var2)))) (is-O_node (readHeap var11 var2))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main78 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main76 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main83 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main88 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var1)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (and (inv_main91 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 Addr) (var3 Int) (var4 Int) (var5 Addr) (var6 Int) (var7 Int) (var8 Heap)) (not (and (inv_main103 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var8 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 Addr) (var4 Int) (var5 Int) (var6 Addr) (var7 Int) (var8 Int) (var9 Heap)) (not (and (inv_main107 var9 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_node (readHeap var9 var0)))))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Int) (var3 Int) (var4 Addr) (var5 Int) (var6 Int) (var7 Heap)) (not (inv_main110 var7 var6 var5 var4 var3 var2 var1 var0))))
(check-sat)
