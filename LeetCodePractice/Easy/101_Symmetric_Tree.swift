//
//  Symmetric_Tree.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Symmetric_Tree: Solution {
    
    override func ExampleTest() {
        let tn1 = TreeNode(1)
        tn1.left = TreeNode(2)
        tn1.right = TreeNode(2)
        
        tn1.left?.left = TreeNode(3)
        tn1.left?.right = TreeNode(4)
        
        tn1.right?.left = TreeNode(4)
        tn1.right?.right = TreeNode(3)
        
        print(self.isSymmetric(tn1))//the answer must be true
        
        tn1.left?.left = nil
        tn1.right?.right = TreeNode(3)
        tn1.right?.left = nil
        print(self.isSymmetric(tn1))//the answer must be false
        
        
        let tn2 = TreeNode(2)
        tn2.left = TreeNode(3)
        tn2.right = TreeNode(3)
        
        tn2.left?.left = TreeNode(4)
        tn2.left?.right = TreeNode(5)
        
        tn2.right?.left = TreeNode(5)
        tn2.right?.right = TreeNode(4)
        
        tn2.left?.right?.left = TreeNode(8)
        tn2.left?.right?.right = TreeNode(9)
        
        tn2.right?.right?.left = TreeNode(9)
        tn2.right?.right?.right = TreeNode(8)
        
        print(self.isSymmetric(tn2)) //the answer must be false
    }
    
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return self.isSymmetrics(root?.left, root?.right)
    }
    
    func isSymmetrics(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        if left != nil && right == nil {
            return false
        }
        if left == nil && right != nil {
            return false
        }
        return (left?.val == right?.val) && self.isSymmetrics(left?.left, right?.right) && self.isSymmetrics(left?.right, right?.left)
    }
}
