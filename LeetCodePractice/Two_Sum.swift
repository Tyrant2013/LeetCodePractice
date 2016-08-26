//
//  Solution_Two_Sum.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/8/26.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Two_Sum: Solution {
    override func ExampleTest() {
        let result = twoSum([3, 2, 4], 6)
        print(result)
    }
    
    func twoSum(nums: [Int], _ target: Int) -> [Int] {
        var sum = [Int:Int]()
        for index in 0...nums.count - 1 {
            sum[nums[index]] = index
        }
        print(sum)
        for index in 0...nums.count - 1 {
            let lastValue = target - nums[index]
            if let otherIndex = sum[lastValue] {
                if otherIndex != index {
                    return [index, otherIndex]
                }
            }
        }
        return []
        
//        for index in 0...nums.count - 1 {
//            let begin = index + 1
//            for second in begin...nums.count - 1 {
//                if (nums[index] + nums[second] == target) {
//                    return [index, second]
//                }
//            }
//        }
//        return []
    }
}
