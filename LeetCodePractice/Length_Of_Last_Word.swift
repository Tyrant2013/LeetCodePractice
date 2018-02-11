//
//  Length_Of_Last_Word.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/11.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

//Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
//
//If the last word does not exist, return 0.
//
//Note: A word is defined as a character sequence consists of non-space characters only.
//
//Example:
//
//Input: "Hello World"
//Output: 5

class Length_Of_Last_Word: Solution {
    
    override func ExampleTest() {
        [
            "Hello World", // 5
            "a", // 1
            "b ", // 1
            ].forEach { str in
                print("str: \(str), last word len: \(self.lengthOfLastWord(str))")
        }
    }
    
    func lengthOfLastWord(_ s: String) -> Int {
        if s.count == 0 {
            return 0
        }
        var len = s.count - 1
        let sequeue = s.map({ $0 })
        var ret = 0
        while len >= 0 {
            if sequeue[len] != " " {
                ret += 1
            }
            else {
                if ret == 0 && sequeue[len] == " " {
                    len -= 1
                    continue
                }
                return ret
            }
            len -= 1
        }
        return ret
    }
}
