//
//  ZigZag_Conversion.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 16/9/5.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class ZigZag_Conversion: Solution {
    override func ExampleTest() {
        print(convert("PAYPALISHIRING", 3))
        print(convert("ABC", 1))
        print(convert("A", 1))
        print(convert("ABC", 2))  //ACB
        print(convert("yjvsbxetkierlqfbxyetjbyqqgrtrurpfmkhjocwyjpjzunxsrqdurtkxngqjxgokqxvgarejgqkadhuuayortbqgjhpgpgsfdolffrqmhbokklgklxdeywnhfepukibqwoxbfqpnrgzdrgocdtidpxmucbqojrghfelnuaangzszhibmcmptjbqnfgcoykyfojskluzuwstdaxqejhyuloiqumguwecnnuzbpzvntoqvliawsatdobtkpzhlejytfauwzrjugcptmrserlhhoaudcboimpdrpaqqrzmxddtqvluoweymgspitfshwwynwqfnqrnvvilstiirmgduyuftzxawvbjrrphjiwffgszzcisqoxlprqkqnloloaehrltzjahpsgqxoknfhywyogrethphhtrahkcsmjkgpcdgnrnwpjxgpqkjxbshwlhfxjyjskqkmtqbkdycovidnuokvjrtubzukzdfjtpxphzzmzbawlfjfuvcfpwbqxvcyzhhuygjhhltgoteaznhvlkaaidqhzsfacoucwekerfmfzrhagpxrbxtlajsbezbgnwklcupvaeabviddxaxazqlbcddgcgoreacixudzyeavofanfxngqyhubmaftqyzqcinylowrotfvusctfijdsdggfnbxnbqsjfqwupokitgcmiwtthxlnfruvtsiuiafprbjgpuq", 415))
    }
    func convert(s: String, _ numRows: Int) -> String {
        guard numRows >= 2 else {
            return s
        }
        let nCount = 2 * (numRows - 1)
        var subStrs = Array(count: numRows, repeatedValue: "")
        for i in 0..<s.length {
            let index = numRows - 1 - abs(numRows - 1 - (i % nCount))
            subStrs[index] += s[i]
        }
        var result = ""
        for str in subStrs {
            result += str
        }
        return result
    }
}
