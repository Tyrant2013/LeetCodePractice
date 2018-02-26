//
//  Climbing_Stairs.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Climbing_Stairs: Solution {
    override func ExampleTest() {
        [
            0,
            1,
            2,
            3,
            4,
            5
            ].forEach { num in
                print("total steps: \(num), how many ways: \(self.climbStairs(num))")
        }
    }
    
    func climbStairs(_ n: Int) -> Int {
        if n == 0 || n == 1 || n == 2 { return n }
        var pre_one = 2
        var pre_two = 1
        var ret = 0
        for _ in 3...n {
            ret = pre_one + pre_two
            pre_two = pre_one
            pre_one = ret
        }
        return ret
    }
}
