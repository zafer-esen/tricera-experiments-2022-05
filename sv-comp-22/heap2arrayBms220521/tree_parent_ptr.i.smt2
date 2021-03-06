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
                   ((TreeNode (left Addr) (right Addr) (parent Addr)))
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
(declare-fun inv_main12 (Heap Addr Addr) Bool)
(declare-fun inv_main13 (Heap Addr Addr) Bool)
(declare-fun inv_main15 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main18 (Heap Addr Addr) Bool)
(declare-fun inv_main19 (Heap Addr Addr) Bool)
(declare-fun inv_main23 (Heap Addr Addr) Bool)
(declare-fun inv_main29 (Heap Addr Addr) Bool)
(declare-fun inv_main30 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main31 (Heap Addr Addr) Bool)
(declare-fun inv_main32 (Heap Addr Addr) Bool)
(declare-fun inv_main38 (Heap Addr Addr) Bool)
(declare-fun inv_main39 (Heap Addr Addr Addr) Bool)
(declare-fun inv_main4 (Heap) Bool)
(declare-fun inv_main40 (Heap Addr Addr) Bool)
(declare-fun inv_main41 (Heap Addr Addr) Bool)
(declare-fun inv_main43 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main44 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main48 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main49 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main5 (Heap Addr Addr) Bool)
(declare-fun inv_main53 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main54 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main57 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main59 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main6 (Heap Addr Addr) Bool)
(declare-fun inv_main61 (Heap Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main65 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main67 (Heap Addr Addr Addr Addr) Bool)
(declare-fun inv_main69 (Heap Addr Addr Addr Addr Addr) Bool)
(declare-fun inv_main7 (Heap Addr Addr) Bool)
(declare-fun inv_main8 (Heap Addr Addr) Bool)
(assert (forall ((var0 Heap)) (or (not (= var0 emptyHeap)) (inv_main4 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main15 var8 var7 var6 var5) (= var3 (right (getTreeNode (readHeap var8 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var5 nullAddr))) (not (= var3 0))) (not (= var4 0)))) (inv_main18 var2 var1 var0))))
(assert (forall ((var0 TreeNode) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main23 var8 var7 var6) (or (and (= (right (getTreeNode (readHeap var8 var6))) nullAddr) (= var4 1)) (and (not (= (right (getTreeNode (readHeap var8 var6))) nullAddr)) (= var4 0)))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var4 0))) (not (= var5 0)))) (inv_main39 (newHeap (allocHeap var3 (O_TreeNode var0))) var2 var1 (newAddr (allocHeap var3 (O_TreeNode var0)))))))
(assert (forall ((var0 TreeNode) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Int) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (inv_main13 var8 var7 var6) (or (and (= (left (getTreeNode (readHeap var8 var6))) nullAddr) (= var4 1)) (and (not (= (left (getTreeNode (readHeap var8 var6))) nullAddr)) (= var4 0)))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var4 0))) (not (= var5 0)))) (inv_main30 (newHeap (allocHeap var3 (O_TreeNode var0))) var2 var1 (newAddr (allocHeap var3 (O_TreeNode var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main43 var4 var3 var2 var1 var0) (is-O_StackItem (readHeap var4 var1))) (is-O_StackItem (readHeap var4 var1)))) (inv_main44 (writeHeap var4 var1 (O_StackItem (StackItem nullAddr (node (getStackItem (readHeap var4 var1)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main30 var3 var2 var1 var0) (is-O_TreeNode (readHeap var3 var1))) (is-O_TreeNode (readHeap var3 var1)))) (inv_main29 (writeHeap var3 var1 (O_TreeNode (TreeNode var0 (right (getTreeNode (readHeap var3 var1))) (parent (getTreeNode (readHeap var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main40 var2 var1 var0) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main41 (writeHeap var2 (right (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) nullAddr (parent (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main67 var4 var3 var2 var1 var0) (is-O_TreeNode (readHeap var4 var2)))) (inv_main69 var4 var3 var2 var1 var0 (right (getTreeNode (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (and (inv_main39 var3 var2 var1 var0) (is-O_TreeNode (readHeap var3 var1))) (is-O_TreeNode (readHeap var3 var1)))) (inv_main38 (writeHeap var3 var1 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var3 var1))) var0 (parent (getTreeNode (readHeap var3 var1)))))) var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main7 var2 var1 var0) (is-O_TreeNode (readHeap var2 var1))) (is-O_TreeNode (readHeap var2 var1)))) (inv_main8 (writeHeap var2 var1 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 var1))) (right (getTreeNode (readHeap var2 var1))) nullAddr))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main41 var2 var1 var0) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main8 (writeHeap var2 (right (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (right (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) var0))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main23 var6 var5 var4) (or (and (= (right (getTreeNode (readHeap var6 var4))) nullAddr) (= var3 1)) (and (not (= (right (getTreeNode (readHeap var6 var4))) nullAddr)) (= var3 0)))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TreeNode (readHeap var6 var4))) (= var3 0))) (inv_main8 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main23 var7 var6 var5) (or (and (= (right (getTreeNode (readHeap var7 var5))) nullAddr) (= var3 1)) (and (not (= (right (getTreeNode (readHeap var7 var5))) nullAddr)) (= var3 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_TreeNode (readHeap var7 var5))) (not (= var3 0))) (= var4 0))) (inv_main8 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main15 var3 var2 var1 var0) (= var0 nullAddr))) (inv_main13 var3 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main15 var7 var6 var5 var4) (= var3 (right (getTreeNode (readHeap var7 var5))))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_TreeNode (readHeap var7 var5))) (not (= var4 nullAddr))) (= var3 0))) (inv_main13 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main49 var10 var9 var8 var7 var6) (= var0 (node (getStackItem (readHeap var10 var6))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_StackItem (readHeap var10 var6)))) (inv_main53 (writeHeap var5 var1 defObj) var4 var0 var2 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main5 var2 var1 var0) (is-O_TreeNode (readHeap var2 var1))) (is-O_TreeNode (readHeap var2 var1)))) (inv_main6 (writeHeap var2 var1 (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var2 var1))) (parent (getTreeNode (readHeap var2 var1)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main48 var10 var9 var8 var7 var6) (= var0 (next (getStackItem (readHeap var10 var7))))) (= var1 var6)) (= var2 var7)) (= var3 var8)) (= var4 var9)) (= var5 var10)) (is-O_StackItem (readHeap var10 var7)))) (inv_main49 var5 var4 var3 var0 var1))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (inv_main59 var4 var3 var2 var1 var0) (is-O_TreeNode (readHeap var4 var2)))) (inv_main61 var4 var3 var2 var1 var0 (left (getTreeNode (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main31 var2 var1 var0) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main32 (writeHeap var2 (left (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) nullAddr (parent (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Addr) (var4 Int) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main15 var8 var7 var6 var5) (= var3 (right (getTreeNode (readHeap var8 var6))))) (= var0 var6)) (= var1 var7)) (= var2 var8)) (is-O_TreeNode (readHeap var8 var6))) (not (= var5 nullAddr))) (not (= var3 0))) (= var4 0))) (inv_main19 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main32 var2 var1 var0) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main23 (writeHeap var2 (left (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (right (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) var0))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (and (inv_main13 var6 var5 var4) (or (and (= (left (getTreeNode (readHeap var6 var4))) nullAddr) (= var3 1)) (and (not (= (left (getTreeNode (readHeap var6 var4))) nullAddr)) (= var3 0)))) (= var0 var4)) (= var1 var5)) (= var2 var6)) (is-O_TreeNode (readHeap var6 var4))) (= var3 0))) (inv_main23 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap) (var3 Int) (var4 Int) (var5 Addr) (var6 Addr) (var7 Heap)) (or (not (and (and (and (and (and (and (and (inv_main13 var7 var6 var5) (or (and (= (left (getTreeNode (readHeap var7 var5))) nullAddr) (= var3 1)) (and (not (= (left (getTreeNode (readHeap var7 var5))) nullAddr)) (= var3 0)))) (= var0 var5)) (= var1 var6)) (= var2 var7)) (is-O_TreeNode (readHeap var7 var5))) (not (= var3 0))) (= var4 0))) (inv_main23 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main38 var2 var1 var0) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main40 (writeHeap var2 (right (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (parent (getTreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (inv_main6 var2 var1 var0) (is-O_TreeNode (readHeap var2 var1))) (is-O_TreeNode (readHeap var2 var1)))) (inv_main7 (writeHeap var2 var1 (O_TreeNode (TreeNode (left (getTreeNode (readHeap var2 var1))) nullAddr (parent (getTreeNode (readHeap var2 var1)))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 StackItem) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main54 var11 var10 var9 var8 var7) (not (= (right (getTreeNode (readHeap var11 var9))) nullAddr))) (is-O_TreeNode (readHeap var11 var9))) (= var0 (newAddr (allocHeap var11 (O_StackItem var5))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var6 (newHeap (allocHeap var11 (O_StackItem var5)))))) (inv_main65 var6 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (and (and (inv_main29 var2 var1 var0) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0)))) (inv_main31 (writeHeap var2 (left (getTreeNode (readHeap var2 var0))) (O_TreeNode (TreeNode nullAddr (right (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (parent (getTreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))))) var1 var0))))
(assert (forall ((var0 Addr) (var1 TreeNode) (var2 Heap)) (or (not (inv_main4 var2)) (inv_main5 (newHeap (allocHeap var2 (O_TreeNode var1))) (newAddr (allocHeap var2 (O_TreeNode var1))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main65 var4 var3 var2 var1 var0) (is-O_StackItem (readHeap var4 var0))) (is-O_StackItem (readHeap var4 var0)))) (inv_main67 (writeHeap var4 var0 (O_StackItem (StackItem var1 (node (getStackItem (readHeap var4 var0)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main18 var6 var5 var4) (= var0 (left (getTreeNode (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TreeNode (readHeap var6 var4)))) (inv_main12 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Heap)) (or (not (and (and (and (and (and (inv_main19 var6 var5 var4) (= var0 (right (getTreeNode (readHeap var6 var4))))) (= var1 var4)) (= var2 var5)) (= var3 var6)) (is-O_TreeNode (readHeap var6 var4)))) (inv_main12 var3 var2 var0))))
(assert (forall ((var0 Int) (var1 Addr) (var2 Addr) (var3 Heap)) (or (not (and (inv_main8 var3 var2 var1) (not (= var0 0)))) (inv_main12 var3 var2 var2))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 StackItem) (var6 Heap) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Addr) (var11 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main53 var11 var10 var9 var8 var7) (not (= (left (getTreeNode (readHeap var11 var9))) nullAddr))) (is-O_TreeNode (readHeap var11 var9))) (= var0 (newAddr (allocHeap var11 (O_StackItem var5))))) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 var10)) (= var6 (newHeap (allocHeap var11 (O_StackItem var5)))))) (inv_main57 var6 var4 var3 var2 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (or (not (and (inv_main12 var2 var1 var0) (is-O_TreeNode (readHeap var2 var0)))) (inv_main15 var2 var1 var0 (left (getTreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 StackItem) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Int) (var6 Addr) (var7 Addr) (var8 Heap)) (or (not (and (and (and (and (inv_main8 var8 var7 var6) (= var2 nullAddr)) (= var3 var7)) (= var4 var8)) (= var5 0))) (inv_main43 (newHeap (allocHeap var4 (O_StackItem var1))) var3 var2 (newAddr (allocHeap var4 (O_StackItem var1))) var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main53 var4 var3 var2 var1 var0) (= (left (getTreeNode (readHeap var4 var2))) nullAddr)) (is-O_TreeNode (readHeap var4 var2)))) (inv_main54 var4 var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Addr) (var10 Heap)) (or (not (and (and (and (and (and (and (and (inv_main61 var10 var9 var8 var7 var6 var5) (= var0 var6)) (= var1 var7)) (= var2 var8)) (= var3 var9)) (= var4 (writeHeap var10 var6 (O_StackItem (StackItem (next (getStackItem (readHeap var10 var6))) var5))))) (is-O_StackItem (readHeap var10 var6))) (is-O_StackItem (readHeap var10 var6)))) (inv_main54 var4 var3 var2 var0 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (or (not (and (and (inv_main57 var4 var3 var2 var1 var0) (is-O_StackItem (readHeap var4 var0))) (is-O_StackItem (readHeap var4 var0)))) (inv_main59 (writeHeap var4 var0 (O_StackItem (StackItem var1 (node (getStackItem (readHeap var4 var0)))))) var3 var2 var1 var0))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main44 var9 var8 var7 var6 var5) (= var0 var5)) (= var4 var6)) (= var1 var7)) (= var2 var8)) (= var3 (writeHeap var9 var6 (O_StackItem (StackItem (next (getStackItem (readHeap var9 var6))) var8))))) (is-O_StackItem (readHeap var9 var6))) (is-O_StackItem (readHeap var9 var6))) (not (= var4 nullAddr)))) (inv_main48 var3 var2 var1 var4 var4))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Addr) (var8 Addr) (var9 Heap)) (or (not (and (and (and (and (and (and (and (and (inv_main54 var9 var8 var7 var6 var5) (= (right (getTreeNode (readHeap var9 var7))) nullAddr)) (is-O_TreeNode (readHeap var9 var7))) (= var0 var5)) (= var4 var6)) (= var1 var7)) (= var2 var8)) (= var3 (writeHeap var9 var7 defObj))) (not (= var4 nullAddr)))) (inv_main48 var3 var2 var1 var4 var4))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Addr) (var6 Addr) (var7 Heap) (var8 Heap) (var9 Addr) (var10 Addr) (var11 Addr) (var12 Addr) (var13 Addr) (var14 Addr) (var15 Heap)) (or (not (and (and (and (and (and (and (and (and (and (and (and (and (and (inv_main69 var15 var14 var13 var12 var11 var10) (= var2 var11)) (= var0 var12)) (= var6 var13)) (= var4 var14)) (= var7 (writeHeap var15 var11 (O_StackItem (StackItem (next (getStackItem (readHeap var15 var11))) var10))))) (is-O_StackItem (readHeap var15 var11))) (is-O_StackItem (readHeap var15 var11))) (= var1 var2)) (= var9 var2)) (= var3 var6)) (= var5 var4)) (= var8 (writeHeap var7 var6 defObj))) (not (= var9 nullAddr)))) (inv_main48 var8 var5 var3 var9 var9))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main5 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main5 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))) (is-O_TreeNode (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main6 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main6 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))) (is-O_TreeNode (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main7 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main7 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var1)))) (is-O_TreeNode (readHeap var2 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main12 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main15 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))) (not (= var0 nullAddr))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main18 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main19 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main13 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main30 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main30 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))) (is-O_TreeNode (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main29 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main29 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main29 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main31 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main31 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main31 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main32 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main32 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main32 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (left (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main23 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (inv_main39 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Heap)) (not (and (and (inv_main39 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var3 var1)))) (is-O_TreeNode (readHeap var3 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main38 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main38 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main38 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main40 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main40 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main40 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (inv_main41 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (inv_main41 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Heap)) (not (and (and (and (inv_main41 var2 var1 var0) (not (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0))))))) (is-O_TreeNode (readHeap var2 (right (getTreeNode (readHeap var2 var0)))))) (is-O_TreeNode (readHeap var2 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main43 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main43 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var1)))) (is-O_StackItem (readHeap var4 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main44 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main44 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var1)))) (is-O_StackItem (readHeap var4 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main48 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main49 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main53 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main57 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main57 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var0)))) (is-O_StackItem (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main59 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main61 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (and (inv_main61 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var5 var1)))) (is-O_StackItem (readHeap var5 var1))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main54 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main65 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var0)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (and (inv_main65 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var4 var0)))) (is-O_StackItem (readHeap var4 var0))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Heap)) (not (and (inv_main67 var4 var3 var2 var1 var0) (not (is-O_TreeNode (readHeap var4 var2)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (inv_main69 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var5 var1)))))))
(assert (forall ((var0 Addr) (var1 Addr) (var2 Addr) (var3 Addr) (var4 Addr) (var5 Heap)) (not (and (and (inv_main69 var5 var4 var3 var2 var1 var0) (not (is-O_StackItem (readHeap var5 var1)))) (is-O_StackItem (readHeap var5 var1))))))
(check-sat)
