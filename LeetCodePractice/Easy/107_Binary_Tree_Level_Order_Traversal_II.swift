//
//  Binary_Tree_Level_Order_Traversal_II.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given a binary tree, return the bottom-up level order traversal of its nodes' values. (ie, from left to right, level by level from leaf to root).
 
 For example:
 Given binary tree [3,9,20,null,null,15,7],
  3
 / \
 9  20
   /  \
  15   7
 return its bottom-up level order traversal as:
 [
 [15,7],
 [9,20],
 [3]
 ]
*/

import UIKit

class Binary_Tree_Level_Order_Traversal_II: Solution {

    override func ExampleTest() {
        let tr = TreeNode(3)
        tr.left = TreeNode(9)
        tr.right = TreeNode(20)

        tr.right?.left = TreeNode(15)
        tr.right?.right = TreeNode(7)
        print(self.levelOrderBottom(tr))

        let tr1 = TreeNode(1)
        tr1.left = TreeNode(2)
        tr1.left?.left = TreeNode(4)

        tr1.right = TreeNode(3)
        tr1.right?.right = TreeNode(5)
        print(self.levelOrderBottom(tr1))

        let tr2 = TreeNode(1)
        tr2.left = TreeNode(2)
        tr2.left?.left = TreeNode(3)
        tr2.left?.left?.left = TreeNode(4)
        tr2.left?.left?.left?.left = TreeNode(5)
        print(self.levelOrderBottom(tr2))
        
        let tr3 = TreeNode(0)
        tr3.left = TreeNode(2)
        tr3.right = TreeNode(4)
        
        tr3.left?.left = TreeNode(1)
        tr3.left?.left?.left = TreeNode(5)
        tr3.left?.left?.right = TreeNode(1)
        
        tr3.right?.left = TreeNode(3)
        tr3.right?.right = TreeNode(-1)
        
        tr3.right?.left?.right = TreeNode(6)
        tr3.right?.right?.right = TreeNode(8)
        print(self.levelOrderBottom(tr3))
        
        print(self.levelOrderBottom(nil))
        
        print(self.levelOrderBottom(TreeNode(1)))
    }
    
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return [[Int]]()
        }
        var queue = [TreeNode]()
        queue.append(root!)
        var ret = [[Int]]()
        while !queue.isEmpty {
            var data = [Int]()
            let size = queue.count
            for _ in 0..<size {
                let node = queue.first!
                queue.removeFirst()
                data.append(node.val)
                if let left = node.left {
                    queue.append(left)
                }
                if let right = node.right {
                    queue.append(right)
                }
            }
            ret.insert(data, at: 0)
        }
        return ret
    }
    
    /// 102
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }
        var result = [[TreeNode]]()
        var level = [TreeNode]()
        level.append(root)
        while level.count != 0 {
            result.append(level)
            var nextLevel = [TreeNode]()
            for node in level {
                if let leftNode = node.left {
                    nextLevel.append(leftNode)
                }
                if let rightNode = node.right {
                    nextLevel.append(rightNode)
                }
            }
            level = nextLevel
        }
        let ans = result.map { $0.map { $0.val }}
        return ans
    }
}
