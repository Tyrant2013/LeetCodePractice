//
//  Remove Duplicates From Sorted List.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/22.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Remove_Duplicates_From_Sorted_List: Solution {
    
    override func ExampleTest() {
        let first = ListNode(1)
        first.next = ListNode(2)
        first.next?.next = ListNode(4)
        
        self.showList(first)
        self.showList(self.deleteDuplicates(first))
        
        let sec = ListNode(1)
        sec.next = ListNode(1)
        sec.next?.next = ListNode(1)
        sec.next?.next?.next = ListNode(2)
        sec.next?.next?.next?.next = ListNode(1)
        self.showList(sec)
        self.showList(self.deleteDuplicates(sec))
    }
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil {
            return head
        }
        var eles = [Int : Int]()
        eles[(head?.val)!] = 0
        var index = head?.next
        var pre = head
        while index != nil {
            if eles[(index?.val)!] != nil {
                pre?.next = index?.next
            }
            else {
                eles[(index?.val)!] = 0
                pre = index
            }
            index = index?.next
        }
        return head
    }
    
}
