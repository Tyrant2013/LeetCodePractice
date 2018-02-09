//
//  String_To_Integer(aoti).swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 16/9/8.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class String_To_Integer_aoti_: Solution {
    
    override func ExampleTest() {
        print(myAtoi("1"))
        print(myAtoi("-12"))
        print(myAtoi("987654321"))
        print(myAtoi("  -0012a42")) /// expected -12
        print(myAtoi("    010")) /// expected 10
        print(myAtoi("+1"))
        print(myAtoi("   +0 123")) // expected 0
        print(myAtoi("-2147483648")) /// expected -2147483648
        print(myAtoi("2147483648")) // expected 2147483647
        print(myAtoi("9223372036854775809")) // expectd 2147483647
        print(myAtoi("   -1123u3761867")) /// expected -1123
        print(myAtoi("  +b12102370352")) /// expected 0
        print(myAtoi("+-2")) /// expected 0
        print(myAtoi("+1")) // expected 1
//        print(Int32.max)
//        print(Int32.min)
    }
    
    func myAtoi(_ str: String) -> Int {
        var destStr = ""
        for char in str.map({ $0 }) {
            if char == " " &&  destStr.count == 0 {
                continue
            }
            destStr += String(char)
        }
        var lastStr = ""
        if destStr.count == 0 {
            return 0
        }
        var ifNegative = false
        let destArray = destStr.map({ $0 })
        if destStr.first! == "-" {
            ifNegative = true
            destStr = String(destStr.dropFirst())
        }
        else if destStr.first! == "+" {
            ifNegative = false
            if destStr.count > 1 && destArray[1] >= "0" && destArray[1] <= "9" {
                destStr = String(destStr.dropFirst())
            }
        }
        
        for char in destStr.map({ $0 }) {
            if char >= "0" && char <= "9"{
                if lastStr.count == 0 && char != "0" {
                    lastStr += String(char)
                }
                else {
                    lastStr += String(char)
                }
                continue
            }
            if lastStr.count == 0 {
                return 0
            }
            break;
        }
        if let swapVal = Int(lastStr) {
            let tmpVal = ifNegative ? swapVal * -1 : swapVal
            if tmpVal > Int(Int32.max) {
                return Int(Int32.max)
            }
            else if tmpVal < Int(Int32.min) {
                return Int(Int32.min)
            }
            return Int(tmpVal)
        }
        if ifNegative == false && destStr.count > 10 {
            return Int(Int32.max)
        }
        else if ifNegative == true && destStr.count > 10 {
            return Int(Int32.min)
        }
        return 0
    }
}
