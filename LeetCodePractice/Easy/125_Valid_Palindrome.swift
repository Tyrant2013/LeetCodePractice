//
//  Valid_Palindrome.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/24.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
 
 For example,
 "A man, a plan, a canal: Panama" is a palindrome.
 "race a car" is not a palindrome.
 
 Note:
 Have you consider that the string might be empty? This is a good question to ask during an interview.
 
 For the purpose of this problem, we define empty string as valid palindrome.
 */

import UIKit

class Valid_Palindrome: Solution {

    override func ExampleTest() {
        [
            "A man, a plan, a canal: Panama",
            "race a car"
            ].forEach { str in
                print(self.isPalindrome(str))
        }
    }
    
    func isPalindrome(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
//        let a = Character(UnicodeScalar(65))
//        let z = Character(UnicodeScalar(90))
//        let o = Character(UnicodeScalar(48))
//        let g = Character(UnicodeScalar(57))
        let clearStr = s.uppercased().filter { ($0 >= "A" && $0 <= "Z") || ($0 >= "0" && $0 <= "9") }
        let mid = clearStr.count / 2
        let dropFirstIndex = clearStr.count - mid
        let dropLastIndex = clearStr.count % 2 == 0 ? mid : mid + 1
        print(clearStr)
        let preStr = String(clearStr.dropLast(dropFirstIndex))
        let lastStr = String(clearStr.dropFirst(dropLastIndex).reversed())
        return preStr == lastStr
    }
    
}
