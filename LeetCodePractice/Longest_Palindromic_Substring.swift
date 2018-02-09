//
//  Longest_Palindromic_Substring.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 16/8/29.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Longest_Palindromic_Substring: Solution {
    override func ExampleTest() {
//        print("ab".startIndex);
//        print("ab".startIndex.advancedBy(1))
//        print("ab".substringWithRange("ab".startIndex..<"ab".startIndex.advancedBy(1)))
//        print("ab".substringWithRange("ab".startIndex..."ab".startIndex))
        
//        longestPalindrome("a")
//        longestPalindrome("ab")
//        longestPalindrome("aba")
        print(longestPalindrome("abba"))
//        longestPalindrome("cabba")
        print(longestPalindrome("abbbbbbbbdbbbbbbba"))
        let beginTime = NSDate.timeIntervalSinceReferenceDate;
        let str = longestPalindrome("rgczcpratwyqxaszbuwwcadruayhasynuxnakpmsyhxzlnxmdtsqqlmwnbxvmgvllafrpmlfuqpbhjddmhmbcgmlyeypkfpreddyencsdmgxysctpubvgeedhurvizgqxclhpfrvxggrowaynrtuwvvvwnqlowdihtrdzjffrgoeqivnprdnpvfjuhycpfydjcpfcnkpyujljiesmuxhtizzvwhvpqylvcirwqsmpptyhcqybstsfgjadicwzycswwmpluvzqdvnhkcofptqrzgjqtbvbdxylrylinspncrkxclykccbwridpqckstxdjawvziucrswpsfmisqiozworibeycuarcidbljslwbalcemgymnsxfziattdylrulwrybzztoxhevsdnvvljfzzrgcmagshucoalfiuapgzpqgjjgqsmcvtdsvehewrvtkeqwgmatqdpwlayjcxcavjmgpdyklrjcqvxjqbjucfubgmgpkfdxznkhcejscymuildfnuxwmuklntnyycdcscioimenaeohgpbcpogyifcsatfxeslstkjclauqmywacizyapxlgtcchlxkvygzeucwalhvhbwkvbceqajstxzzppcxoanhyfkgwaelsfdeeviqogjpresnoacegfeejyychabkhszcokdxpaqrprwfdahjqkfptwpeykgumyemgkccynxuvbdpjlrbgqtcqulxodurugofuwzudnhgxdrbbxtrvdnlodyhsifvyspejenpdckevzqrexplpcqtwtxlimfrsjumiygqeemhihcxyngsemcolrnlyhqlbqbcestadoxtrdvcgucntjnfavylip")
        let endTime = NSDate.timeIntervalSinceReferenceDate
        print("use time: \(endTime - beginTime)")
        print("Result: \(str)")
    }
    
    func longestPalindrome(_ s: String) -> String {
//        return longestPalindrome_dp(s)
        return longestPalindrome_expand(s)
    }
    
    func longestPalindrome_dp(_ s: String) -> String {
        let len = s.count
        var startPos = 0
        var maxLen = 1
        var map = Array(repeating: Array(repeating: false, count: len + 1), count: len + 1)
        let strArray = s.map({ $0 })
        for index in 0..<len - 1 {
            map[index][index] = true
            if strArray[index] == strArray[index + 1] {
                map[index][index + 1] = true
                startPos = index
                maxLen = 2
            }
        }
        map[len - 1][len - 1] = true
        for n in 3...len {
            for i in 0..<len-n+1 {
                let j = i + n - 1
                if strArray[i] == strArray[j] && map[i + 1][j - 1] {
                    map[i][j] = true
                    startPos = i
                    maxLen = n
                }
            }
        }
        return String(strArray[startPos..<(startPos + maxLen)])
    }
    
    func longestPalindrome_expand(_ s: String) -> String {
        let len = s.count
        let strArray = s.map({ $0 })
        guard len <= 1000 && len > 0 else {
            return ""
        }
        var longestString = String(strArray[0])
        for num in 0..<len {
            let p1 = expandAroundString(s, left: num, right: num)
            if p1.count > longestString.count {
                longestString = p1
            }
            let p2 = expandAroundString(s, left: num, right: num + 1)
            if p2.count > longestString.count {
                longestString = p2
            }
        }
        return String(longestString)
    }
    
    func expandAroundString(_ s: String, left: Int, right: Int) -> String {
        var l = left, r = right
        let len = s.count
        let strArray = s.map({ $0 })
        while l >= 0 && r <= len - 1 && strArray[l] == strArray[r] {
            l -= 1
            r += 1
        }
        l += 1
        r -= 1
        if (l <= r && l >= 0 && r >= 0) {
            return String(strArray[l...r])
        }
        return ""
    }
    
}

//extension String {
//    subscript (index: Int) -> String {
//        get {
//            let startIndex = self.startIndex.advanced(by: index)
//            let endIndex = self.startIndex.advanced(by: index)
//            return String(self[startIndex...endIndex])
//        }
//    }
//    subscript (range: Range<Int>) -> String {
//        get {
//            let startIndex = self.startIndex.advanced(by: range.startIndex)
//            let endIndex = self.startIndex.advanced(by: range.endIndex - 1)
//            return String(self[startIndex...endIndex])
//        }
//    }
//    var length: Int {
//        get {
//            return self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
//        }
//    }
//}

