//
//  Solution.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/8/26.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

enum Question {
    case Two_Sum
    case Add_Two_Numbers
    case Longest_Substring_Without_Repeating_Characters
    case Median_Of_Two_Sorted_Array
    case Longest_Palindromic_Substring
    case ZigZag_Conversion
    case Reverse_Integer
    case String_To_Integer
}

class Solution: NSObject {
    func ExampleTest() -> Void {
        
    }
    
    func showResult(type: Question) -> Void {
        var solution: Solution
        switch type {
        case .Two_Sum:
            solution = Two_Sum()
        case .Add_Two_Numbers:
            solution = Add_Two_Numbers()
        case .Longest_Substring_Without_Repeating_Characters:
            solution = Longest_Substring_Without_Repeating_Characters()
        case .Median_Of_Two_Sorted_Array:
            solution = Median_Of_Two_Sorted_Array()
        case .Longest_Palindromic_Substring:
            solution = Longest_Palindromic_Substring()
        case .ZigZag_Conversion:
            solution = ZigZag_Conversion()
        case .Reverse_Integer:
            solution = Reverse_Integer()
        case .String_To_Integer:
            solution = String_To_Integer_aoti_()
        }
        solution.ExampleTest()
    }
}
