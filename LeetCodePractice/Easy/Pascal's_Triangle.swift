//
//  Pascal's_Triangle.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/24.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//
/*
 Given numRows, generate the first numRows of Pascal's triangle.
 
 For example, given numRows = 5,
 Return
 
 [
 [1],
 [1,1],
 [1,2,1],
 [1,3,3,1],
 [1,4,6,4,1]
 ]

 */

import UIKit

class Pascal_s_Triangle: Solution {

    override func ExampleTest() {
        [
            1,
            2,
            3,
            4,
            5,
            6,
            ].forEach { num in
                print("numRows = \(num), retrun: \(self.generate(num))")
        }
    }
    
    func generate(_ numRows: Int) -> [[Int]] {
        if numRows == 0 {
            return [[Int]]()
        }
        if numRows == 1 {
            return [[1]]
        }
        var ret = [[1]]
        for index in 1..<numRows {
            let preIndex = index - 1
            let lasQueue = ret[preIndex]
            var queue = [1]
            for preCol in 0..<preIndex {
                queue.append(lasQueue[preCol] + lasQueue[preCol + 1])
            }
            queue.append(1)
            ret.append(queue)
        }
        return ret
    }
    
}
