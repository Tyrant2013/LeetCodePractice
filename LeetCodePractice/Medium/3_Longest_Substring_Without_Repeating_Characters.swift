//
//  Solution_Longest_Substring_Without_Repeating_Characters.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/8/26.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Longest_Substring_Without_Repeating_Characters: Solution {
    
    override func ExampleTest() -> Void {
        var length = lengthOfLongestSubstring("abcabcbb")
        print("expected 3, now is \(length)")
        length = lengthOfLongestSubstring("bbbbb")
        print("expected 1, now is \(length)")
        length = lengthOfLongestSubstring("pwwkew")
        print("expected 3, now is \(length)")
        length = lengthOfLongestSubstring("aab")
        print("expected 2, now is \(length)")
        length = lengthOfLongestSubstring("dvdf")
        print("expected 3, now is \(length)")
        length = lengthOfLongestSubstring("ohvhjdml")
        print("expected 6, now is \(length)")
        length = lengthOfLongestSubstring("wobgrovw")
        
        let beginTimeInterval = NSDate.timeIntervalSinceReferenceDate
        length = lengthOfLongestSubstring("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!")
        let endTimeInterval = NSDate.timeIntervalSinceReferenceDate
        print(endTimeInterval - beginTimeInterval)
        print("expected i don know, now is \(length)")
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var max = 0
        if s.lengthOfBytes(using: .utf8) > 0 {
            var result = [String]()
            var check = [String:Int]()
            for chatar in s.map({ $0 }) {
                let key = String(chatar)
                if check[key] != nil {
                    if result.first == key {
                        result.removeFirst()
                    }
                    else if result.last != key {
                        if let index = result.index(of: key) {
                            result.removeSubrange(0...index)
                        }
                    }
                    else {
                        result.removeAll()
                        check.removeAll()
                    }
                }
                result.append(key)
                check[key] = 1
                max = result.count > max ? result.count : max
            }
        }
        return max
    }
}
