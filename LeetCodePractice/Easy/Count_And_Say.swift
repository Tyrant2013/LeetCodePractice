//
//  Count_And_Say.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/11.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Count_And_Say: Solution {
    
    override func ExampleTest() {
        [
         1,
         2,
         3,
         4,
         5,
         6,
         7,
        ].forEach { num in
            print("num: \(num), res: \(self.countAndSay(num))")
        }
    }
    
    func countAndSay(_ n: Int) -> String {
        var countDown = n - 1
        var numArr = [1]
        while countDown > 0 {
            var countNum = numArr.first!
            var count = 0
            var res = [Int]()
            for index in 0..<numArr.count {
                if countNum == numArr[index] {
                    count += 1
                }
                else {
                    res.append(count)
                    res.append(countNum)
                    countNum = numArr[index]
                    count = 1
                }
            }
            res.append(count)
            res.append(countNum)
            
            numArr = res
            countDown -= 1
        }
        return numArr.map({ String($0) }).joined()
    }
}
