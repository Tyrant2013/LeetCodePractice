//
//  Is_Palindrome.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/8.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Is_Palindrome: Solution {
    
    override func ExampleTest() -> Void {
        [12345678987654321,
         123456]
    }
    
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        let str = String(x)
        let len = str.count / 2
        let lastLen = str.count % 2 == 0 ? len : len + 1
        let preStr = str.prefix(len)
        let lastStr = str.dropFirst(lastLen)
        return preStr == String(lastStr.reversed())
    }
}
