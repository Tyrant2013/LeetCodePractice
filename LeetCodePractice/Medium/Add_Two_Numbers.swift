//
//  Solution_Add_Two_Numbers.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/8/26.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Add_Two_Numbers: Solution {
    override func ExampleTest() {
        let first = ListNode(7)
        first.next = ListNode(1)
        first.next?.next = ListNode(0)
        first.next?.next?.next = ListNode(6)
        first.next?.next?.next?.next = ListNode(9)
        first.next?.next?.next?.next?.next = ListNode(0)
        first.next?.next?.next?.next?.next?.next = ListNode(1)
        first.next?.next?.next?.next?.next?.next?.next = ListNode(7)
        first.next?.next?.next?.next?.next?.next?.next?.next = ListNode(0)
        first.next?.next?.next?.next?.next?.next?.next?.next?.next = ListNode(2)

//        let second = ListNode(9)
//        second.next = ListNode(9)
//        second.next?.next = ListNode(4)

        let second = ListNode(0)
        second.next = ListNode(1)
        second.next?.next = ListNode(0)
        second.next?.next?.next = ListNode(5)
        second.next?.next?.next?.next = ListNode(0)
        second.next?.next?.next?.next?.next = ListNode(2)
        second.next?.next?.next?.next?.next?.next = ListNode(4)
        second.next?.next?.next?.next?.next?.next?.next = ListNode(8)
        second.next?.next?.next?.next?.next?.next?.next?.next = ListNode(8)
        second.next?.next?.next?.next?.next?.next?.next?.next?.next = ListNode(1)

        let beginTimeInterval = NSDate.timeIntervalSinceReferenceDate
        var Sum = addTwoNumbers(first, second)
        let endTimeInterval = NSDate.timeIntervalSinceReferenceDate
        print(endTimeInterval - beginTimeInterval)
        while Sum != nil {
            print(Sum?.val as Any)
            Sum = Sum?.next
        }
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var first = l1, second = l2
        let resut = ListNode(0)
        var nextVal = resut
        while (first != nil || second != nil) {
            let leftVal = (first == nil ? 0 : first?.val)!
            let rightVal = (second == nil ? 0 : second?.val)!
            let sum = leftVal + rightVal + carry
            carry = sum / 10
            nextVal.next = ListNode(sum % 10)
            nextVal = nextVal.next!
            
            if first != nil {
                first = first?.next
            }
            if second != nil {
                second = second?.next
            }
        }
        if carry > 0 {
            nextVal.next = ListNode(carry)
        }
        return resut.next
    }
}
