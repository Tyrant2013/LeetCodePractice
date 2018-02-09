//
//  Remove_Element.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/9.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Remove_Element: Solution {
    override func ExampleTest() {
        [[3,2,2,3],
         [3,4,5,3,3,3,3,5,6,7],
         [4,5,6,3,3,3,3],
         [],
         [1,3,3,3,3,3,3,3,3,3,3,3,3,3],
         [2],
         [2,2],
         [1]].forEach { nums in
            var ll = nums
            print("ori:\(nums), last: \(self.removeElement2(&ll, 3)), \(ll)")
        }
    }
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        var ret = nums.count - 1
        var hasReplace = false
        for index in 0..<nums.count {
            if nums[index] == val && index <= ret {
                while nums[ret] == val && index < ret {
                    ret -= 1
                }
                let tmp = nums[index]
                nums[index] = nums[ret]
                nums[ret] = tmp
                hasReplace = true
            }
        }
        return hasReplace ? ret : ret + 1
    }
    
    func removeElement2(_ nums: inout [Int], _ val: Int) -> Int {
        for num in nums {
            if num == val{
                nums.remove(at: nums.index(of: num)!);
            }    }
        
        return nums.count;
    }
}
