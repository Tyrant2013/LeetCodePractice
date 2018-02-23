//
//  Balanced_Binary_Tree.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/23.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given a binary tree, determine if it is height-balanced.
 
 For this problem, a height-balanced binary tree is defined as:
 
 a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 Example 1:
 
 Given the following tree [3,9,20,null,null,15,7]:
 
     3
    / \
   9  20
     /  \
    15   7
 Return true.
 
 Example 2:
 
 Given the following tree [1,2,2,3,3,null,null,4,4]:
 
          1
         / \
        2   2
       / \
      3   3
     / \
    4   4
 Return false.
 */
import UIKit

class Balanced_Binary_Tree: Solution {

    override func ExampleTest() {
        let tr1 = TreeNode(3)
        tr1.left = TreeNode(9)
        tr1.right = TreeNode(20)
        tr1.right?.left = TreeNode(15)
        tr1.right?.right = TreeNode(7)
        print(self.isBalanced(tr1))
        
        let tr2 = TreeNode(1)
        tr2.left = TreeNode(2)
        tr2.right = TreeNode(2)
        tr2.left?.left = TreeNode(3)
        tr2.left?.right = TreeNode(3)
        tr2.left?.left?.left = TreeNode(4)
        tr2.left?.left?.right = TreeNode(4)
        print(self.isBalanced(tr2))
        
        let tr3 = TreeNode(1)
        tr3.left = TreeNode(2)
        tr3.right = TreeNode(2)
        tr3.left?.left = TreeNode(3)
        tr3.right?.right = TreeNode(3)
        tr3.left?.left?.left = TreeNode(4)
        tr3.right?.right?.right = TreeNode(4)
        print(self.isBalanced(tr3))
        
        let tr4 = TreeNode(2)
        tr4.left = TreeNode(1)
        tr4.right = TreeNode(4)
        
        tr4.right?.left = TreeNode(3)
        tr4.right?.right = TreeNode(5)
        
        tr4.right?.right?.right = TreeNode(6)
        print(self.isBalanced(tr4))
    }
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root?.left == nil && root?.right == nil {
            return true
        }
        var queue = [TreeNode]()
        queue.append(root!)
        while !queue.isEmpty {
            let node = queue.first!
            queue.removeFirst()
            if let left = node.left {
                queue.append(left)
            }
            if let right = node.right {
                queue.append(right)
            }
            if abs(self._treeDepth(node.left) - self._treeDepth(node.right)) >= 2 {
                return false
            }
        }
        return true
    }
    
    func _treeDepth(_ tree: TreeNode?) -> Int {
        if tree == nil {
            return 0
        }
        var ldepth = 0, rdepth = 0
        if tree?.left != nil {
            ldepth = self._treeDepth(tree?.left)
        }
        if tree?.right != nil {
            rdepth = self._treeDepth(tree?.right)
        }
        return ldepth > rdepth ? ldepth + 1 : rdepth + 1
    }
}
