//
//  Implement_strStr.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/9.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Implement_strStr: Solution {
    override func ExampleTest() {
        [
            "hello": "ll",
            "aaaaa": "bba",
            "hellloll": "lo",
            "lasdflkjsaldfjk": "lkj",
            "lkajsdflkalsdd": "dda",
            "a": "",
            "": "",
            "b": "b",
            "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa": "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
            "mississippi": "pi",//9
            "babbbbbabb": "bbab",//5
            "babbbbbbabb": "bbbab",//5
            "babbbbbbabbb": "bbab"//6
            ].forEach { (key, val) in
            print("\(key), \(val), \(self.strStr(key, val))")
        }
    }
    
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let haystackLen = haystack.count
        let needleLen = needle.count
        var startIndex = 0
        while (haystackLen - startIndex) >= needleLen {
            let haySubStr = String(haystack.dropFirst(startIndex))
            let testStr = haySubStr.prefix(needleLen)
            if testStr == needle {
                return startIndex
            }
            startIndex += 1
        }
        return -1
    }
}
