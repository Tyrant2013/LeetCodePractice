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
        let beginTime = NSDate.timeIntervalSinceReferenceDate();
        let str = longestPalindrome("rgczcpratwyqxaszbuwwcadruayhasynuxnakpmsyhxzlnxmdtsqqlmwnbxvmgvllafrpmlfuqpbhjddmhmbcgmlyeypkfpreddyencsdmgxysctpubvgeedhurvizgqxclhpfrvxggrowaynrtuwvvvwnqlowdihtrdzjffrgoeqivnprdnpvfjuhycpfydjcpfcnkpyujljiesmuxhtizzvwhvpqylvcirwqsmpptyhcqybstsfgjadicwzycswwmpluvzqdvnhkcofptqrzgjqtbvbdxylrylinspncrkxclykccbwridpqckstxdjawvziucrswpsfmisqiozworibeycuarcidbljslwbalcemgymnsxfziattdylrulwrybzztoxhevsdnvvljfzzrgcmagshucoalfiuapgzpqgjjgqsmcvtdsvehewrvtkeqwgmatqdpwlayjcxcavjmgpdyklrjcqvxjqbjucfubgmgpkfdxznkhcejscymuildfnuxwmuklntnyycdcscioimenaeohgpbcpogyifcsatfxeslstkjclauqmywacizyapxlgtcchlxkvygzeucwalhvhbwkvbceqajstxzzppcxoanhyfkgwaelsfdeeviqogjpresnoacegfeejyychabkhszcokdxpaqrprwfdahjqkfptwpeykgumyemgkccynxuvbdpjlrbgqtcqulxodurugofuwzudnhgxdrbbxtrvdnlodyhsifvyspejenpdckevzqrexplpcqtwtxlimfrsjumiygqeemhihcxyngsemcolrnlyhqlbqbcestadoxtrdvcgucntjnfavylip")
        let endTime = NSDate.timeIntervalSinceReferenceDate()
        print("use time: \(endTime - beginTime)")
        print("Result: \(str)")
    }
    
    func longestPalindrome(s: String) -> String {
//        return longestPalindrome_dp(s)
        return longestPalindrome_expand(s)
    }
    
    func longestPalindrome_dp(s: String) -> String {
        let len = s.length
        var startPos = 0
        var maxLen = 1
        var map = Array(count: len + 1, repeatedValue: Array(count: len + 1, repeatedValue: false))
        for index in 0..<len - 1 {
            map[index][index] = true
            if s[index] == s[index + 1] {
                map[index][index + 1] = true
                startPos = index
                maxLen = 2
            }
        }
        map[len - 1][len - 1] = true
        for n in 3...len {
            for i in 0..<len-n+1 {
                let j = i + n - 1
                if s[i] == s[j] && map[i + 1][j - 1] {
                    map[i][j] = true
                    startPos = i
                    maxLen = n
                }
            }
        }
        return s[startPos..<(startPos + maxLen)]
    }
    
    func longestPalindrome_expand(s: String) -> String {
        let len = s.length
        
        guard len <= 1000 && len > 0 else {
            return ""
        }
        var longestString = s[0]
        for num in 0..<len {
            let p1 = expandAroundString(s, left: num, right: num)
            if p1.length > longestString.length {
                longestString = p1
            }
            let p2 = expandAroundString(s, left: num, right: num + 1)
            if p2.length > longestString.length {
                longestString = p2
            }
        }
        return longestString
    }
    
    func expandAroundString(s: String, left: Int, right: Int) -> String {
        var l = left, r = right
        let len = s.length
        while l >= 0 && r <= len - 1 && s[l] == s[r] {
            l -= 1
            r += 1
        }
        l += 1
        r -= 1
        if (l <= r && l >= 0 && r >= 0) {
            return s[l...r]
        }
        return ""
    }
    
}

extension String {
    subscript (index: Int) -> String {
        get {
            let startIndex = self.startIndex.advancedBy(index)
            let endIndex = self.startIndex.advancedBy(index)
            return self[startIndex...endIndex]
        }
    }
    subscript (range: Range<Int>) -> String {
        get {
            let startIndex = self.startIndex.advancedBy(range.startIndex)
            let endIndex = self.startIndex.advancedBy(range.endIndex - 1)
            return self[startIndex...endIndex]
        }
    }
    var length: Int {
        get {
            return self.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
        }
    }
}
