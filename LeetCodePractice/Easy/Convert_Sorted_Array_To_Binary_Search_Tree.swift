//
//  Convert_Sorted_Array_To_Binary_Search_Tree.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/23.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given an array where elements are sorted in ascending order, convert it to a height balanced BST.
 
 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 
 
 Example:
 
 Given the sorted array: [-10,-3,0,5,9],
 
 One possible answer is: [0,-3,9,-10,null,5], which represents the following height balanced BST:
 
      0
     / \
   -3   9
   /   /
 -10  5
 */
import UIKit

class Convert_Sorted_Array_To_Binary_Search_Tree: Solution {

    override func ExampleTest() {
        let tree = self.sortedArrayToBST([-10,-3,0,5,9])
        self.showTree(tree)
    }
    
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return self._buildTree(nums, 0, nums.count)
    }
    
    func _buildTree(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
        if end <= start {
            return nil
        }
        let mid = (start + end) / 2
        let root = TreeNode(nums[mid])
        root.left = self._buildTree(nums, start, mid)
        root.right = self._buildTree(nums, mid + 1, end)
        return root
    }
}
