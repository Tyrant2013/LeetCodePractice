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
        solution.showResult(.Valid_Parentheses)
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

