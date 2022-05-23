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

(declare-datatypes ((HeapObject 0) (TreeNode 0) (StackItem 0))
                   (((O_Int (getInt Int)) (O_UInt (getUInt Int)) (O_Addr (getAddr Addr)) (O_TreeNode (getTreeNode TreeNode)) (O_StackItem (getStackItem StackItem)) (defObj))
                   ((TreeNode (left Addr) (right Addr)))
                   ((StackItem (next Addr) (node Addr)))))
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
(declare-fun inv_main11 (Heap Addr Addr) Bool)
(declare-fun inv_main12 (Heap Addr Addr) Bool)
(declare-fun inv_main14 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main17 (Heap Addr Addr) Bool)
(declare-fun inv_main18 (Heap Addr Addr) Bool)
(declare-fun inv_main22 (Heap Addr Addr) Bool)
(declare-fun inv_main28 (Heap Addr Addr) Bool)
(declare-fun inv_main29 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main30 (Heap Addr Addr) Bool)
(declare-fun inv_main36 (Heap Addr Addr) Bool)
(declare-fun inv_main37 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main38 (Heap Addr Addr) Bool)
(declare-fun inv_main4 (Heap) Bool)
(declare-fun inv_main42 (Heap Addr Addr TreeNode Int Addr) Bool)
(declare-fun inv_main44 (Heap Addr Addr TreeNode Int Addr) Bool)
(declare-fun inv_main45 (Heap Addr Addr TreeNode Int Addr) Bool)
(declare-fun inv_main47 (Heap Addr Addr TreeNode Int Addr) Bool)
(declare-fun inv_main48 (Heap Addr Addr TreeNode Int Addr Addr) Bool)
(declare-fun inv_main5 (Heap Addr Addr) Bool)
(declare-fun inv_main56 (Heap Addr Addr TreeNode Int Addr) Bool)
(declare-fun inv_main59 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main6 (Heap Addr Addr) Bool)
(declare-fun inv_main60 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main64 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main65 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main69 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main7 (Heap Addr Addr) Bool)
(declare-fun inv_main70 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main73 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main75 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main77 (Heap Addr Addr TreeNode Int Addr Addr Addr Addr) Bool)
(declare-fun inv_main81 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main83 (Heap Addr Addr TreeNode Int Addr Addr Addr) Bool)
(declare-fun inv_main85 (Heap Addr Addr TreeNode Int Addr Addr Addr Addr) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main29 var3 var2 var1 var0) (is-O_TreeNode (readHeap var3 var1))) (is-O_TreeNode (readHeap var3 var1)))) (inv_main28 (writeHeap var3 var1 (O_TreeNode (TreeNode var0 (right (getTreeNode (readHeap var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main17 var6 var5 var4) (= var0 (left (getTreeNode (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TreeNode (readHeap var6 var4)))) (inv_main11 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main18 var6 var5 var4) (= var0 (right (getTreeNode (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TreeNode (readHeap var6 var4)))) (inv_main11 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main7 var3 var2 var1) (not (= var0 0)))) (inv_main11 var3 var2 var2))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main42 var5 var4 var3 var2 var1 var0) (not (= var3 3)))) (inv_main44 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 TreeNode) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main22 var8 var7 var6) (or (and (= (right (getTreeNode (readHeap var8 var6))) nullAddr) (= var4 1)) (and (not (= (right (getTreeNode (readHeap var8 var6))) nullAddr)) (= var4 0)))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var4 0))) (not (= var5 0)))) (inv_main37 (newHeap (allocHeap var3 (O_TreeNode var0))) var2 var1 (newAddr (allocHeap var3 (O_TreeNode var0)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (and (inv_main42 var5 var4 var3 var2 var1 var0) (= var3 3)) (not (= var1 var4)))) (inv_main56 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main30 var2 var1 var0) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main22 (writeHeap var2 (left (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) nullAddr))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main12 var6 var5 var4) (or (and (= (left (getTreeNode (readHeap var6 var4))) nullAddr) (= var3 1)) (and (not (= (left (getTreeNode (readHeap var6 var4))) nullAddr)) (= var3 0)))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TreeNode (readHeap var6 var4))) (= var3 0))) (inv_main22 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main12 var7 var6 var5) (or (and (= (left (getTreeNode (readHeap var7 var5))) nullAddr) (= var3 1)) (and (not (= (left (getTreeNode (readHeap var7 var5))) nullAddr)) (= var3 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_TreeNode (readHeap var7 var5))) (not (= var3 0))) (= var4 0))) (inv_main22 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (= (left (getTreeNode (readHeap var7 var5))) nullAddr)) (is-O_TreeNode (readHeap var7 var5)))) (inv_main70 var7 var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 TreeNode) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main77 var16 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 (writeHeap var16 var9 (O_StackItem (StackItem (next (getStackItem (readHeap var16 var9))) var8))))) (is-O_StackItem (readHeap var16 var9))) (is-O_StackItem (readHeap var16 var9)))) (inv_main70 var7 var6 var5 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 StackItem) (var9 Heap) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Int) (var14 TreeNode) (var15 Addr) (var16 Addr) (var17 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main70 var17 var16 var15 var14 var13 var12 var11 var10) (not (= (right (getTreeNode (readHeap var17 var15))) nullAddr))) (is-O_TreeNode (readHeap var17 var15))) (= var0 (newAddr (allocHeap var17 (O_StackItem var8))))) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (= var9 (newHeap (allocHeap var17 (O_StackItem var8)))))) (inv_main81 var9 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main83 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_TreeNode (readHeap var7 var5)))) (inv_main85 var7 var6 var5 var4 var3 var2 var1 var0 (right (getTreeNode (readHeap var7 var5)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main14 var8 var7 var6 var5) (= var3 (right (getTreeNode (readHeap var8 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var5 nullAddr))) (not (= var3 0))) (not (= var4 0)))) (inv_main17 var2 var1 var0))))
(assert (forall ((var0 TreeNode) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main12 var8 var7 var6) (or (and (= (left (getTreeNode (readHeap var8 var6))) nullAddr) (= var4 1)) (and (not (= (left (getTreeNode (readHeap var8 var6))) nullAddr)) (= var4 0)))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var4 0))) (not (= var5 0)))) (inv_main29 (newHeap (allocHeap var3 (O_TreeNode var0))) var2 var1 (newAddr (allocHeap var3 (O_TreeNode var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main6 var2 var1 var0) (is-O_TreeNode (readHeap var2 var1))) (is-O_TreeNode (readHeap var2 var1)))) (inv_main7 (writeHeap var2 var1 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 var1))) nullAddr))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main38 var2 var1 var0) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main7 (writeHeap var2 (right (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) nullAddr))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main22 var6 var5 var4) (or (and (= (right (getTreeNode (readHeap var6 var4))) nullAddr) (= var3 1)) (and (not (= (right (getTreeNode (readHeap var6 var4))) nullAddr)) (= var3 0)))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TreeNode (readHeap var6 var4))) (= var3 0))) (inv_main7 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main22 var7 var6 var5) (or (and (= (right (getTreeNode (readHeap var7 var5))) nullAddr) (= var3 1)) (and (not (= (right (getTreeNode (readHeap var7 var5))) nullAddr)) (= var3 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_TreeNode (readHeap var7 var5))) (not (= var3 0))) (= var4 0))) (inv_main7 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TreeNode) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (inv_main48 var6 var5 var4 var3 var2 var1 var0) (is-O_TreeNode (readHeap var6 var4))) (is-O_TreeNode (readHeap var6 var4)))) (inv_main47 (writeHeap var6 var4 (O_TreeNode (TreeNode var0 (right (getTreeNode (readHeap var6 var4)))))) var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 TreeNode) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main64 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 (next (getStackItem (readHeap var16 var10))))) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 var15)) (= var8 var16)) (is-O_StackItem (readHeap var16 var10)))) (inv_main65 var8 var7 var6 var5 var4 var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_TreeNode (readHeap var7 var5)))) (inv_main77 var7 var6 var5 var4 var3 var2 var1 var0 (left (getTreeNode (readHeap var7 var5)))))))
(assert (forall ((var0 Int) (var1 TreeNode) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 TreeNode) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main47 var11 var10 var9 var8 var7 var6) (= var5 var6)) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 (writeHeap var11 var9 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var11 var9))) var7))))) (is-O_TreeNode (readHeap var11 var9))) (is-O_TreeNode (readHeap var11 var9))) (not (= var5 nullAddr)))) (inv_main42 var4 var3 var5 var2 var0 var5))))
(assert (forall ((var0 Int) (var1 TreeNode) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Int) (var8 TreeNode) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (and (inv_main47 var11 var10 var9 var8 var7 var6) (= var5 var6)) (= var0 var7)) (= var1 var8)) (= var2 var9)) (= var3 var10)) (= var4 (writeHeap var11 var9 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var11 var9))) var7))))) (is-O_TreeNode (readHeap var11 var9))) (is-O_TreeNode (readHeap var11 var9))) (= var5 nullAddr))) (inv_main42 var4 var3 var0 nullAddr var0 var5))))
(assert (forall ((var0 TreeNode) (var1 Int) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main7 var4 var3 var2) (= var1 0))) (inv_main42 var4 var3 var3 var0 3 nullAddr))))
(assert (forall ((var0 Addr) (var1 StackItem) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 TreeNode) (var8 TreeNode) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Heap) (var13 Heap) (var14 Addr) (var15 Int) (var16 TreeNode) (var17 Addr) (var18 Addr) (var19 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main56 var19 var18 var17 var16 var15 var14) (= var3 var14)) (= var5 var15)) (= var7 var16)) (= var2 var17)) (= var10 var18)) (= var12 (writeHeap var19 nullAddr (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var19 nullAddr)))))))) (is-O_TreeNode (readHeap var19 nullAddr))) (is-O_TreeNode (readHeap var19 nullAddr))) (= var4 var3)) (= var6 var5)) (= var8 var7)) (= var9 nullAddr)) (= var11 var10)) (= var13 var12))) (inv_main59 (newHeap (allocHeap var13 (O_StackItem var1))) var11 var9 var8 var6 var4 (newAddr (allocHeap var13 (O_StackItem var1))) var0))))
(assert (forall ((var0 Addr) (var1 StackItem) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap) (var8 Addr) (var9 Int) (var10 TreeNode) (var11 Addr) (var12 Addr) (var13 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main42 var13 var12 var11 var10 var9 var8) (= var11 3)) (= var9 var12)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 nullAddr)) (= var6 var12)) (= var7 var13))) (inv_main59 (newHeap (allocHeap var7 (O_StackItem var1))) var6 var5 var4 var3 var2 (newAddr (allocHeap var7 (O_StackItem var1))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main14 var3 var2 var1 var0) (= var0 nullAddr))) (inv_main12 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main14 var7 var6 var5 var4) (= var3 (right (getTreeNode (readHeap var7 var5))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_TreeNode (readHeap var7 var5))) (not (= var4 nullAddr))) (= var3 0))) (inv_main12 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Int) (var13 TreeNode) (var14 Addr) (var15 Addr) (var16 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (inv_main65 var16 var15 var14 var13 var12 var11 var10 var9) (= var0 (node (getStackItem (readHeap var16 var9))))) (= var1 var9)) (= var2 var10)) (= var3 var11)) (= var4 var12)) (= var5 var13)) (= var6 var14)) (= var7 var15)) (= var8 var16)) (is-O_StackItem (readHeap var16 var9)))) (inv_main69 (writeHeap var8 var1 defObj) var7 var0 var5 var4 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main5 var2 var1 var0) (is-O_TreeNode (readHeap var2 var1))) (is-O_TreeNode (readHeap var2 var1)))) (inv_main6 (writeHeap var2 var1 (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var2 var1)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main36 var2 var1 var0) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main38 (writeHeap var2 (right (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main11 var2 var1 var0) (is-O_TreeNode (readHeap var2 var0)))) (inv_main14 var2 var1 var0 (left (getTreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_StackItem (readHeap var7 var1))) (is-O_StackItem (readHeap var7 var1)))) (inv_main60 (writeHeap var7 var1 (O_StackItem (StackItem nullAddr (node (getStackItem (readHeap var7 var1)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 TreeNode) (var2 Heap)) (or (not (inv_main4 var2)) (inv_main5 (newHeap (allocHeap var2 (O_TreeNode var1))) (newAddr (allocHeap var2 (O_TreeNode var1))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 StackItem) (var9 Heap) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Int) (var14 TreeNode) (var15 Addr) (var16 Addr) (var17 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main69 var17 var16 var15 var14 var13 var12 var11 var10) (not (= (left (getTreeNode (readHeap var17 var15))) nullAddr))) (is-O_TreeNode (readHeap var17 var15))) (= var0 (newAddr (allocHeap var17 (O_StackItem var8))))) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 var15)) (= var7 var16)) (= var9 (newHeap (allocHeap var17 (O_StackItem var8)))))) (inv_main73 var9 var7 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TreeNode) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Int) (var9 TreeNode) (var10 Addr) (var11 Addr) (var12 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main44 var12 var11 var10 var9 var8 var7) (= var0 (left (getTreeNode (readHeap var12 var10))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var5 var11)) (= var6 var12)) (is-O_TreeNode (readHeap var12 var10)))) (inv_main45 var6 var5 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main14 var8 var7 var6 var5) (= var3 (right (getTreeNode (readHeap var8 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var5 nullAddr))) (not (= var3 0))) (= var4 0))) (inv_main18 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TreeNode) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 TreeNode) (var13 Addr) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main60 var15 var14 var13 var12 var11 var10 var9 var8) (= var0 var8)) (= var7 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 (writeHeap var15 var9 (O_StackItem (StackItem (next (getStackItem (readHeap var15 var9))) var14))))) (is-O_StackItem (readHeap var15 var9))) (is-O_StackItem (readHeap var15 var9))) (not (= var7 nullAddr)))) (inv_main64 var6 var5 var4 var3 var2 var1 var7 var7))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TreeNode) (var4 Addr) (var5 Addr) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Int) (var12 TreeNode) (var13 Addr) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (inv_main70 var15 var14 var13 var12 var11 var10 var9 var8) (= (right (getTreeNode (readHeap var15 var13))) nullAddr)) (is-O_TreeNode (readHeap var15 var13))) (= var0 var8)) (= var7 var9)) (= var1 var10)) (= var2 var11)) (= var3 var12)) (= var4 var13)) (= var5 var14)) (= var6 (writeHeap var15 var13 defObj))) (not (= var7 nullAddr)))) (inv_main64 var6 var5 var4 var3 var2 var1 var7 var7))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Int) (var6 Int) (var7 TreeNode) (var8 TreeNode) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Heap) (var14 Heap) (var15 Addr) (var16 Addr) (var17 Addr) (var18 Addr) (var19 Addr) (var20 Int) (var21 TreeNode) (var22 Addr) (var23 Addr) (var24 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main85 var24 var23 var22 var21 var20 var19 var18 var17 var16) (= var2 var17)) (= var0 var18)) (= var3 var19)) (= var5 var20)) (= var7 var21)) (= var12 var22)) (= var10 var23)) (= var13 (writeHeap var24 var17 (O_StackItem (StackItem (next (getStackItem (readHeap var24 var17))) var16))))) (is-O_StackItem (readHeap var24 var17))) (is-O_StackItem (readHeap var24 var17))) (= var1 var2)) (= var15 var2)) (= var4 var3)) (= var6 var5)) (= var8 var7)) (= var9 var12)) (= var11 var10)) (= var14 (writeHeap var13 var12 defObj))) (not (= var15 nullAddr)))) (inv_main64 var14 var11 var9 var8 var6 var4 var15 var15))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (or (not (and (inv_main45 var5 var4 var3 var2 var1 var0) (is-O_TreeNode (readHeap var5 var3)))) (inv_main48 var5 var4 var3 var2 var1 var0 (right (getTreeNode (readHeap var5 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (inv_main81 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_StackItem (readHeap var7 var0))) (is-O_StackItem (readHeap var7 var0)))) (inv_main83 (writeHeap var7 var0 (O_StackItem (StackItem var1 (node (getStackItem (readHeap var7 var0)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (inv_main73 var7 var6 var5 var4 var3 var2 var1 var0) (is-O_StackItem (readHeap var7 var0))) (is-O_StackItem (readHeap var7 var0)))) (inv_main75 (writeHeap var7 var0 (O_StackItem (StackItem var1 (node (getStackItem (readHeap var7 var0)))))) var6 var5 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main37 var3 var2 var1 var0) (is-O_TreeNode (readHeap var3 var1))) (is-O_TreeNode (readHeap var3 var1)))) (inv_main36 (writeHeap var3 var1 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var3 var1))) var0))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main28 var2 var1 var0) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main30 (writeHeap var2 (left (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main5 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main5 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))) (is-O_TreeNode (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main6 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))) (is-O_TreeNode (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main11 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main14 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))) (not (= var0 nullAddr))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main17 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main29 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main29 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))) (is-O_TreeNode (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main28 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main28 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main28 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main30 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main30 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main30 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main22 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main37 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main37 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))) (is-O_TreeNode (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main36 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main36 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main36 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main38 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main38 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main44 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var5 var3)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main45 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var5 var3)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TreeNode) (var4 Addr) (var5 Addr) (var6 Heap)) (not (and (inv_main48 var6 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var6 var4)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Int) (var3 TreeNode) (var4 Addr) (var5 Addr) (var6 Heap)) (not (and (and (inv_main48 var6 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var6 var4)))) (is-O_TreeNode (readHeap var6 var4))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main47 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var5 var3)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (and (inv_main47 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var5 var3)))) (is-O_TreeNode (readHeap var5 var3))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main56 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var5 nullAddr)))))))
(assert (forall ((var0 Addr) (var1 Int) (var2 TreeNode) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (and (inv_main56 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var5 nullAddr)))) (is-O_TreeNode (readHeap var5 nullAddr))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (and (inv_main59 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var1)))) (is-O_StackItem (readHeap var7 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main60 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (and (inv_main60 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var1)))) (is-O_StackItem (readHeap var7 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main64 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main65 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main69 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var7 var5)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main73 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (and (inv_main73 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var0)))) (is-O_StackItem (readHeap var7 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main75 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var7 var5)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 Heap)) (not (and (inv_main77 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var8 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 Heap)) (not (and (and (inv_main77 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var8 var1)))) (is-O_StackItem (readHeap var8 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main70 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var7 var5)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main81 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (and (inv_main81 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var7 var0)))) (is-O_StackItem (readHeap var7 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Int) (var4 TreeNode) (var5 Addr) (var6 Addr) (var7 Heap)) (not (and (inv_main83 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var7 var5)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 Heap)) (not (and (inv_main85 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var8 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Int) (var5 TreeNode) (var6 Addr) (var7 Addr) (var8 Heap)) (not (and (and (inv_main85 var8 var7 var6 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var8 var1)))) (is-O_StackItem (readHeap var8 var1))))))
(check-sat)