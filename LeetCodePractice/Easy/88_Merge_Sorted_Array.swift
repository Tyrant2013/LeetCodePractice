//
//  Merge _Sorted_Array.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

//Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.
//
//Note:
//You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.

import UIKit

class Merge_Sorted_Array: Solution {
    
    override func ExampleTest() {
        var nums1 = [1, 3, 5, 7, 9, 10, 55]
        let nums2 = [2, 4, 6, 8, 10, 12]
        self.merge(&nums1, nums1.count, nums2, nums2.count)
        print(nums1.map({ String($0) }).joined(separator: ","))
    }
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var indexOne = 0, indexTwo = 0
        var ret = [Int]()
        while ret.count < (m + n) {
            var retNum = Int.max
            if (indexOne < m && indexTwo < n) {
                let numOne = nums1[indexOne]
                let numTwo = nums2[indexTwo]
                if numOne < numTwo {
                    retNum = numOne
                    indexOne += 1
                }
                else {
                    retNum = numTwo
                    indexTwo += 1
                }
            }
            else if (indexOne < m) {
                retNum = nums1[indexOne]
                indexOne += 1
            }
            else if (indexTwo < n) {
                retNum = nums2[indexTwo]
                indexTwo += 1
            }
            ret.append(retNum)
        }
        nums1.removeAll()
        nums1.append(contentsOf: ret)
    }
}
