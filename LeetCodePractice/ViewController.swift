//
//  ViewController.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/5/19.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let solution = Solution()
//        solution.showResult(.Reverse_Integer)
//        solution.showResult(.String_To_Integer)
//        solution.showResult(.Valid_Parentheses)
//        solution.showResult(.Merge_Two_Lists)
//        solution.showResult(.Remove_Duplicates_From_Sorted_Array)
//        solution.showResult(.Remove_Element)
//        solution.showResult(.Implement_strStr)
//        solution.showResult(.Search_Insert_Position)
//        solution.showResult(.Count_And_Say)
//        solution.showResult(.Maximum_Subarray)
//        solution.showResult(.Length_Of_Last_Word)
//        solution.showResult(.Plus_One)
//        solution.showResult(.Add_Binary)
//        solution.showResult(.Sqrt_x_)
//        solution.showResult(.Climbing_Stairs)
//        solution.showResult(.Remove_Duplicates_From_Sorted_List)
//        solution.showResult(.Merge_Sorted_Array)
//        solution.showResult(.Same_Tree)
//        solution.showResult(.Symmetric_Tree)
//        solution.showResult(.Maximum_Depth_Of_Binary_Tree)
//        solution.showResult(.Binary_Tree_Level_Order_Traversal_II)
//        solution.showResult(.Convert_Sorted_Array_To_Binary_Search_Tree)
//        solution.showResult(.Balanced_Binary_Tree)
//        solution.showResult(.Minimum_Depth_Of_Binary_Tree)
//        solution.showResult(.Path_Sum)
//        solution.showResult(.Pascal_s_Triangle)
//        solution.showResult(.Pascal_s_Triangle_II)
        solution.showResult(.Best_Time_To_Buy_And_Sell_Stock)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func modifyArray(list: [Int]) -> [Int] {
        var tmp = list
        tmp[0] = 2;
        return tmp
    }
}

