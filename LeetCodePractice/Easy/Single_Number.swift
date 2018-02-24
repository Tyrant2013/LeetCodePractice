//
//  Single_Number.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/24.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given an array of integers, every element appears twice except for one. Find that single one.
 
 Note:
 Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
 */

import UIKit

class Single_Number: Solution {
    
    override func ExampleTest() {
        [
            [1, 2, 1],
            [1, 1, 2]
            ].forEach { nums in
                print("nums : \(nums), single one : \(self.singleNumber(nums))")
        }
    }
    
    func singleNumber(_ nums: [Int]) -> Int {
        var single = 0
        nums.forEach { num in
            single ^= num
        }
        return single
    }
}
