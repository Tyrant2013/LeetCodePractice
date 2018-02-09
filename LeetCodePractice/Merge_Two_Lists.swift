//
//  Merge_Two_Lists.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/9.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Merge_Two_Lists: Solution {
    override func ExampleTest() {
        let first = ListNode(1)
        first.next = ListNode(2)
        first.next?.next = ListNode(4)
        
        let sec = ListNode(1)
        sec.next = ListNode(3)
        sec.next?.next = ListNode(4)
        
        var ret = self.mergeTwoLists(first, sec)
        var retStr = [Int]()
        while ret != nil {
            retStr.append((ret?.val)!)
            ret = ret?.next
        }
        print(retStr.map({ String($0) }).joined(separator: "->"))
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var ll = l1, rr = l2
        var res: ListNode = ListNode(0)
        let ret = res
        var addVal = 0
        while ll != nil || rr != nil {
            if let lv = ll?.val, let rv = rr?.val {
                if lv < rv {
                    addVal = lv
                    ll = ll?.next
                }
                else {
                    addVal = rv
                    rr = rr?.next
                }
            }
            else if let lv = ll?.val {
                addVal = lv
                ll = ll?.next
            }
            else if let rv = rr?.val {
                addVal = rv
                rr = rr?.next
            }
            print("cur res val: \(res.val)")
            res.next = ListNode(addVal)
            res = res.next!
        }
        return ret.next
    }
}
