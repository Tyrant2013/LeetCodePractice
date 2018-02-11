//
//  Add_Binary.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/11.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

//Given two binary strings, return their sum (also a binary string).
//
//For example,
//a = "11"
//b = "1"
//Return "100".
//


import UIKit

class Add_Binary: Solution {
    override func ExampleTest() {
        [
            "11": "1", //110
            "10": "1",
            "110": "0",
            "111": "0",
            "1111": "1",
            "100": "11",
            "11111" : "11",
            ].forEach { (key, value) in
                print("\(key), \(value), ret: \(self.addBinary(key, value))")
        }
    }
    
    func addBinary(_ a: String, _ b: String) -> String {
        let (al, bl) = (a.count, b.count)
        let tmpLa = Array(a.map({ Int(String($0)) }).reversed())
        let tmpLb = Array(b.map({ Int(String($0)) }).reversed())
        var la = al > bl ? tmpLa : tmpLb
        let ra = al > bl ? tmpLb : tmpLa
        
        var next = 0
        for index in 0..<la.count {
            let raN = index >= ra.count ? 0 : ra[index]!
            let num = la[index]! + raN + next
            la[index] = num >= 2 ? num % 2 : num
            next = num >= 2 ? num / 2 : 0
        }
        if (next > 0) {
            la.append(1)
        }
        return Array(la.map({ String($0!) }).reversed()).joined()
    }
}
