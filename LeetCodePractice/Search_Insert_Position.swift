//
//  Search_Insert_Position.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/11.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit
/// 优化：使用二分查找法
class Search_Insert_Position: Solution {
    
    override func ExampleTest() {
        [[1,3,5,6,5],//2
         [1,3,5,6,2],//1
         [1,3,5,6,7],//4
         [1,3,5,6,0]].forEach { nums in
                let list = Array(nums.dropLast())
                let target = nums.last!
                print("array: \(list), target: \(target), res: \(self.searchInsert(list, target))")
        }
    }
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var findIndex = -1
        var insertIndex = -1
        for index in 0..<nums.count {
            let num = nums[index]
            if num == target {
                findIndex = index
                break
            }
            if target < num {
                insertIndex = index
                break
            }
            insertIndex = index + 1
        }
        return findIndex != -1 ? findIndex : insertIndex
    }
}
