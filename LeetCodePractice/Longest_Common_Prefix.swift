//
//  Longest_Common_Prefix.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/8.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Longest_Common_Prefix: Solution {
    
    override func ExampleTest() -> Void {
        [["a", "abc", "ab", "aa"],
         ["ab", "adc", "abdf", "abfwe"],
         ["ab", "ac", "ab"],
         ["a", "ab", "ac", "ad"],
         ["a"]].forEach { list in
            print("\(list), longestPrefix: \(self.longestCommonPrefix2(list))")
        }
    }
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        var shortestStr = strs.first!
        
        strs.forEach { str in
            if str.count < shortestStr.count {
                shortestStr = str
            }
        }
        if shortestStr.count == 0 {
            return ""
        }
        var longestStr = ""
        for index in 0...shortestStr.count {
            let prefix = shortestStr.prefix(index)
            var isValid = true
            strs.forEach({ str in
                if str.prefix(index) != prefix {
                    isValid = false
                    return
                }
            })
            if !isValid {
                break;
            }
            longestStr = String(prefix)
        }
        return longestStr
    }
    
    func longestCommonPrefix2(_ strs: [String]) -> String {
        if strs.count == 0 {
            return ""
        }
        
        let strs = strs.sorted()
        let a = strs.first!.map({ $0 })
        let b = strs[strs.count - 1].map({ $0 })
        var result: [Character] = []
        
        print(strs)
        print(a)
        print(b)
        
        for i in 0..<a.count {
            if b.count > i && b[i] == a[i] {
                result.append(b[i])
                
            } else {
                return result.map({ String($0) }).joined()
            }
            
        }
        
        return result.map({ String($0) }).joined()
    }
}
