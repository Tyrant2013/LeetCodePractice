//
//  Solution.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/8/26.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

enum Question {
    case Two_Sum
    case Add_Two_Numbers
    case Longest_Substring_Without_Repeating_Characters
    case Median_Of_Two_Sorted_Array
    case Longest_Palindromic_Substring
    case ZigZag_Conversion
    case Reverse_Integer
    case String_To_Integer
    case Longest_Common_Prefix
    case Is_Palindrome
    case Roman_To_Int
    case Valid_Parentheses
    case Merge_Two_Lists
    case Remove_Duplicates_From_Sorted_Array
    case Remove_Element
    case Implement_strStr
    case Search_Insert_Position
    case Count_And_Say
    case Maximum_Subarray
    case Length_Of_Last_Word
    case Plus_One
    case Add_Binary
    case Sqrt_x_
    case Climbing_Stairs
    case Remove_Duplicates_From_Sorted_List
    case Merge_Sorted_Array
    case Same_Tree
    case Symmetric_Tree
    case Maximum_Depth_Of_Binary_Tree
}

class Solution: NSObject {
    func ExampleTest() -> Void {
        
    }
    
    func showResult(_ type: Question) -> Void {
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
        case .Longest_Common_Prefix:
            solution = Longest_Common_Prefix()
        case .Is_Palindrome:
            solution = Is_Palindrome()
        case .Roman_To_Int:
            solution = Roman_To_Int()
        case .Valid_Parentheses:
            solution = Valid_Parentheses()
        case .Merge_Two_Lists:
            solution = Merge_Two_Lists()
        case .Remove_Duplicates_From_Sorted_Array:
            solution = Remove_Duplicates_From_Sorted_Array()
        case .Remove_Element:
            solution = Remove_Element()
        case .Implement_strStr:
            solution = Implement_strStr()
        case .Search_Insert_Position:
            solution = Search_Insert_Position()
        case .Count_And_Say:
            solution = Count_And_Say()
        case .Maximum_Subarray:
            solution = Maximum_Subarray()
        case .Length_Of_Last_Word:
            solution = Length_Of_Last_Word()
        case .Plus_One:
            solution = Plus_One()
        case .Add_Binary:
            solution = Add_Binary()
        case .Sqrt_x_:
            solution = Sqrt_x_()
        case .Climbing_Stairs:
            solution = Climbing_Stairs()
        case .Remove_Duplicates_From_Sorted_List:
            solution = Remove_Duplicates_From_Sorted_List()
        case .Merge_Sorted_Array:
            solution = Merge_Sorted_Array()
        case .Same_Tree:
            solution = Same_Tree()
        case .Symmetric_Tree:
            solution = Symmetric_Tree()
        case .Maximum_Depth_Of_Binary_Tree:
            solution = Maximum_Depth_Of_Binary_Tree()
        }
        solution.ExampleTest()
    }
    
    func showList(_ list: ListNode?) -> Void {
        var index = list
        var data = [String]()
        while index != nil {
            if let num = index?.val {
                data.append(String(num))
            }
            index = index?.next
        }
        print(data.joined(separator: "->"))
    }
}
