//
//  Remove_Duplicates_From_Sorted_Array.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/9.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Remove_Duplicates_From_Sorted_Array: Solution {
    override func ExampleTest() {
        [[1,1,2]].forEach { list in
            var ll = list
            print("\(list), removed: \(self.removeDuplicates(&ll))")
            print(ll)
        }
    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var i = 0
        for j in 1 ..< nums.count {
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }
        }
        return i + 1
    }
}
