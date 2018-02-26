//
//  Plus_One.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/11.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

//Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.
//
//You may assume the integer do not contain any leading zero, except the number 0 itself.
//
//The digits are stored such that the most significant digit is at the head of the list.

// Example:
// input: [1, 2, 3], output: [1, 2, 4]
// input: [9], output: [1, 0]


class Plus_One: Solution {
    
    override func ExampleTest() {
        [
            [1, 2, 3],
            [9],
            [9,9,9,9],
            [8,8,8,8,8,8,8,8,9]
            ].forEach { nums in
                print("nums: \(nums), ret: \(self.plusOne(nums))")
        }
    }
    
    func plusOne(_ digits: [Int]) -> [Int] {
//        var index = digits.count - 1
//        var ret = digits
//        var next = 0
//        let lastNum = digits[index]
//        if lastNum + 1 == 10 {
//            ret[index] = 0
//            next = 1
//        }
//        else {
//            ret[index] = lastNum + 1
//        }
//        index -= 1
//        while index >= 0 && next == 1 {
//            var num = digits[index]
//            num += next
//            if num == 10 {
//                num = 0
//                next = 1
//            }
//            else {
//                next = 0
//            }
//            ret[index] = num
//            index -= 1
//        }
//        if next == 1 {
//            ret.insert(1, at: 0)
//        }
        
        var ret = digits
        var index = digits.count - 1
        while index >= 0 {
            if ret[index] < 9 {
                ret[index] += 1
                return ret
            }
            else {
                ret[index] = 0
            }
            index -= 1
        }
        ret.insert(1, at: 0)
        
        return ret
    }
}
