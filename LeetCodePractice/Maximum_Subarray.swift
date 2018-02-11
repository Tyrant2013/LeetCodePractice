//
//  Maximum_Subarray.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/11.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

//Find the contiguous subarray within an array (containing at least one number) which has the largest sum.
//
//For example, given the array [-2,1,-3,4,-1,2,1,-5,4],
//the contiguous subarray [4,-1,2,1] has the largest sum = 6.

class Maximum_Subarray: Solution {
    
    override func ExampleTest() {
        [
            [-2,1,-3,4,-1,2,1,-5,4], //[4,-1,2,1], 6
            [1,2,3,4,5,6]
            ].forEach { nums in
                print("source array: \(nums), max sum: \(self.maxSubArray(nums))")
        }
    }
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var (sum, max) = (0, Int.min)
        for index in 0..<nums.count {
            let tmp = sum + nums[index]
            sum = nums[index] > tmp ? nums[index] : tmp
            max = sum > max ? sum : max
        }
        return max
    }
}
