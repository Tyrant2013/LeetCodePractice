//
//  Same_Tree.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

//https://leetcode.com/problems/same-tree/description/
/*
Given two binary trees, write a function to check if they are the same or not.

Two binary trees are considered the same if they are structurally identical and the nodes have the same value.


Example 1:

Input:     1         1
          / \       / \
         2   3     2   3

[1,2,3],   [1,2,3]

Output: true
Example 2:

Input:     1         1
          /           \
         2             2

[1,2],     [1,null,2]

Output: false
Example 3:

Input:     1         1
          / \       / \
         2   1     1   2

[1,2,1],   [1,1,2]

Output: false
*/
import UIKit

class Same_Tree: Solution {
    
    override func ExampleTest() {
        let cm1 = TreeNode(1)
        cm1.left = TreeNode(2)
        cm1.right = TreeNode(3)
        
        let cm2 = TreeNode(1)
        cm2.left = TreeNode(2)
        cm2.right = TreeNode(3)
        print(self.isSameTree(cm1, cm2))
        
        let cm3 = TreeNode(1)
        cm3.left = TreeNode(2)
        
        let cm4 = TreeNode(1)
        cm4.right = TreeNode(2)
        print(self.isSameTree(cm3, cm4))
        
        let cm5 = TreeNode(1)
        cm5.left = TreeNode(2)
        cm5.right = TreeNode(1)
        
        let cm6 = TreeNode(1)
        cm6.left = TreeNode(1)
        cm6.right = TreeNode(2)
        print(self.isSameTree(cm5, cm6))
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if p == nil && q != nil {
            return false
        }
        if p != nil && q == nil {
            return false
        }
        if p?.val == q?.val {
            let leftCompareResult = self.isSameTree(p?.left, q?.left)
            if leftCompareResult == false {
                return false
            }
            let rightCompareResult = self.isSameTree(p?.right, q?.right)
            if rightCompareResult == false {
                return false
            }
            return true
        }
        else {
            return false
        }
    }
}
