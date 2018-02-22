//
//  ViewController.swift
//  LeetCodeTowSum
//
//  Created by 庄晓伟 on 16/5/19.
//  Copyright © 2016年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let solution = Solution()
//        solution.showResult(.Reverse_Integer)
//        solution.showResult(.String_To_Integer)
//        solution.showResult(.Valid_Parentheses)
//        solution.showResult(.Merge_Two_Lists)
//        solution.showResult(.Remove_Duplicates_From_Sorted_Array)
//        solution.showResult(.Remove_Element)
//        solution.showResult(.Implement_strStr)
//        solution.showResult(.Search_Insert_Position)
//        solution.showResult(.Count_And_Say)
//        solution.showResult(.Maximum_Subarray)
//        solution.showResult(.Length_Of_Last_Word)
//        solution.showResult(.Plus_One)
//        solution.showResult(.Add_Binary)
        solution.showResult(.Sqrt_x_)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func modifyArray(list: [Int]) -> [Int] {
        var tmp = list
        tmp[0] = 2;
        return tmp
    }
}

