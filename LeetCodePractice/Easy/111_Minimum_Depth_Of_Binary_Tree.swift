//
//  Minimum_Depth_Of_Binary_Tree.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/23.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given a binary tree, find its minimum depth.
 
 The minimum depth is the number of nodes along the shortest path from the root node down to the nearest leaf node.
 */

import UIKit

class Minimum_Depth_Of_Binary_Tree: Solution {

    override func ExampleTest() {
        let tr1 = TreeNode(3)
        tr1.left = TreeNode(9)
        tr1.right = TreeNode(20)
        tr1.right?.left = TreeNode(15)
        tr1.right?.right = TreeNode(7)
        print(self.minDepth(tr1))
        
        let tr2 = TreeNode(1)
        tr2.left = TreeNode(2)
        tr2.right = TreeNode(2)
        tr2.left?.left = TreeNode(3)
        tr2.left?.right = TreeNode(3)
        tr2.left?.left?.left = TreeNode(4)
        tr2.left?.left?.right = TreeNode(4)
        print(self.minDepth(tr2))
        
        let tr3 = TreeNode(1)
        tr3.left = TreeNode(2)
        tr3.right = TreeNode(2)
        tr3.left?.left = TreeNode(3)
        tr3.right?.right = TreeNode(3)
        tr3.left?.left?.left = TreeNode(4)
        tr3.right?.right?.right = TreeNode(4)
        print(self.minDepth(tr3))
        
        let tr4 = TreeNode(2)
        tr4.left = TreeNode(1)
        tr4.right = TreeNode(4)
        
        tr4.right?.left = TreeNode(3)
        tr4.right?.right = TreeNode(5)
        
        tr4.right?.right?.right = TreeNode(6)
        print(self.minDepth(tr4))
        
        let tr5 = TreeNode(1)
        tr5.left = TreeNode(2)
        print(self.minDepth(tr5))
        
        let tr6 = TreeNode(1)
        print(self.minDepth(tr6))
        
        let tr7 = TreeNode(1)
        tr7.left = TreeNode(2)
        tr7.left?.left = TreeNode(3)
        tr7.left?.left?.left = TreeNode(4)
        tr7.left?.left?.left?.left = TreeNode(5)
        print(self.minDepth(tr7))
        
        let tr8 = TreeNode(1)
        tr8.right = TreeNode(2)
        tr8.right?.right = TreeNode(3)
        tr8.right?.right?.right = TreeNode(4)
        tr8.right?.right?.right?.right = TreeNode(5)
        print(self.minDepth(tr8))
    }
    
    func minDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right == nil {
            return 1
        }
        var ldepth = 0, rdepth = 0
        if root?.left != nil {
            ldepth = self.minDepth(root?.left)
        }
        if root?.right != nil {
            rdepth = self.minDepth(root?.right)
        }
        if ldepth > 0 && rdepth > 0 {
            return ldepth < rdepth ? ldepth + 1 : rdepth + 1
        }
        else if ldepth == 0 {
            return rdepth + 1
        }
        else {
            return ldepth + 1
        }
    }
    
}
