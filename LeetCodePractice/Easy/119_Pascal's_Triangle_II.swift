//
//  Pascal's_Triangle_II.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/24.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Given an index k, return the kth row of the Pascal's triangle.
 
 For example, given k = 3,
 Return [1,3,3,1].
 */

import UIKit

class Pascal_s_Triangle_II: Solution {

    override func ExampleTest() {
        [
            0,
            1,
            2,
            3,
            4,
            5,
            6
            ].forEach { num in
                print("index : \(num), \(self.getRow(num))")
        }
    }
    
    func getRow(_ rowIndex: Int) -> [Int] {
        if rowIndex == 0 {
            return [1]
        }
        var ret = [1]
        for index in 1...rowIndex {
            var tmp = [Int]()
            let preIndex = index - 1
            tmp.append(1)
            for preCol in 0..<preIndex {
                tmp.append(ret[preCol] + ret[preCol + 1])
            }
            tmp.append(1)
            ret = tmp
        }
        return ret
    }
    
}
