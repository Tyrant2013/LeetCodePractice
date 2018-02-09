//
//  Valid_Parentheses.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/9.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Valid_Parentheses: Solution {
    override func ExampleTest() {
        ["[",
         "()",
         "()[]{}",
         "(]",
         "([)]",
         "()[((()))]",
         "((",
         "{{)}",
         "(])"].forEach { str in
            print("input str: \(str), isValid: \(self.isValid(str))")
        }
    }
    
    func isValid(_ s: String) -> Bool {
        let strArray = s.map({ $0 })
        var queue = [Character]()
        var ret = true
        for ch in strArray {
            if ch == "(" || ch == "[" || ch == "{" {
                queue.append(ch)
            }
            else {
                if queue.count == 0 {
                    ret = false
                    break
                }
                let popCh = queue.popLast()
                switch ch {
                case ")":
                    ret = popCh! == "("
                case "]":
                    ret = popCh! == "["
                case "}":
                    ret = popCh! == "{"
                default:
                    ret = false
                }
                if ret == false {
                    queue.append(popCh!)
                    break
                }
            }
        }
        return queue.count == 0 && ret
    }
}
