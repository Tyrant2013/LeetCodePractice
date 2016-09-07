//
//  Reverse_Integer.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 16/9/7.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Reverse_Integer: Solution {
    
    override func ExampleTest() {
        print(reverse(123))
        print(reverse(-123))
        print(reverse(1534236469))  // Expected 0
    }
    
    func reverse(x: Int) -> Int {
        let ifNegative = x < 0
        let strX = String(abs(x))
        var reverStr = ""
        for char in strX.characters.reverse() {
            reverStr += String(char)
        }
        let returnValue = Int(reverStr)!
        if returnValue > Int(Int32.max) {
            return 0
        }
        return ifNegative ? returnValue * -1 : returnValue
    }
}
