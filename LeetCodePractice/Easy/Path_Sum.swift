//
//  Path_Sum.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/23.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.
 
 For example:
 Given the below binary tree and sum = 22,
 
           5
          / \
         4   8
        /   / \
       11  13  4
      /  \      \
     7    2      1
 
 return true, as there exist a root-to-leaf path 5->4->11->2 which sum is 22.
 */

import UIKit

class Path_Sum: Solution {

    override func ExampleTest() {
        let tr = TreeNode(5)
        tr.left = TreeNode(4)
        tr.right = TreeNode(8)
        
        tr.left?.left = TreeNode(11)
        tr.left?.left?.left = TreeNode(7)
        tr.left?.left?.right = TreeNode(2)
        
        tr.right?.left = TreeNode(13)
        tr.right?.right = TreeNode(4)
        
        tr.right?.right?.right = TreeNode(1)
        
        print(self.hasPathSum(tr, 22))
        print(self.hasPathSum(tr, 27))
        print(self.hasPathSum(tr, 18))
        print(self.hasPathSum(tr, 19))
        
        let tr1 = TreeNode(1)
        print(self.hasPathSum(tr1, 0))
        print(self.hasPathSum(tr1, 1))
        
        let tr2 = TreeNode(1)
        tr2.left = TreeNode(2)
        print(self.hasPathSum(tr2, 1))
        print(self.hasPathSum(tr2, 0))
        
    }
    
    func hasPathSum(_ root: TreeNode?, _ sum: Int) -> Bool {
        if root == nil {
            return false
        }
        if root?.left == nil && root?.right == nil {
            return root?.val == sum
        }
        let rootVal = (root?.val)!
        return self.hasPathSum(root?.left, sum - rootVal) || self.hasPathSum(root?.right, sum - rootVal)
    }
}
