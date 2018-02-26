//
//  Sqrt(x).swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Sqrt_x_: Solution {
    
    override func ExampleTest() {
        [
            0,
            1,
            4,
            8,
            9,
            256,
            257
            ].forEach { num in
                print("num is : \(num), result is: \(self.mySqrt(num))")
        }
    }
    
    func mySqrt(_ x: Int) -> Int {
        var ret = 0
        var testRe = 0
        while testRe < x {
            testRe = ret * ret
            if testRe < x {
                ret += 1
            }
            else if testRe == x {
                break
            }
            else {
                ret -= 1
            }
        }
        return ret
    }

}
