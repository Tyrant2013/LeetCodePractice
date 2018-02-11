//
//  Roman_To_Int.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/8.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Roman_To_Int: Solution {
    override func ExampleTest() -> Void {
        
    }
    
    func romanToInt(_ s: String) -> Int {
        let roman = ["I" : 1, "V" : 5, "X" : 10, "L" : 50, "C" : 100, "D" : 500, "M" : 1000]
        var num = 0
        var last = ""
        s.forEach { ch in
            let cur = String(ch)
            num += roman[cur]!
            if last != "" {
                if last == "I" && (cur == "V" || cur == "X") {
                    num -= roman[last]! * 2
                }
                else if last == "X" && (cur == "L" || cur == "C") {
                    num -= roman[last]! * 2
                }
                else if last == "C" && (cur == "D" || cur == "M") {
                    num -= roman[last]! * 2
                }
            }
            last = cur
        }
        return num
    }
}
