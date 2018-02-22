//
//  Maximum_Depth_Of_Binary_Tree.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

For example:
Given binary tree [3,9,20,null,null,15,7],

3
/ \
9  20
/  \
15   7
return its depth = 3.
 */

import UIKit

class Maximum_Depth_Of_Binary_Tree: Solution {

    override func ExampleTest() {
        let tr = TreeNode(3)
        tr.left = TreeNode(9)
        tr.right = TreeNode(20)
        
        tr.right?.left = TreeNode(15)
        tr.right?.right = TreeNode(7)
        
        print(self.maxDepth(tr))
    }
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        if root?.left == nil && root?.right == nil {
            return 1
        }
        return max(findDepth(root?.left, 1), findDepth(root?.right, 1))
    }
    
    func findDepth(_ tree: TreeNode?, _ curDepth: Int) -> Int {
        if tree?.left == nil && tree?.right == nil {
            return curDepth + 1
        }
        return max(findDepth(tree?.left, curDepth + 1), findDepth(tree?.right, curDepth + 1))
    }
}
