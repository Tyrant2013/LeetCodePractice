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
        
//        let Answer1 = Two_Sum()
//        Answer1.ExampleTest()
        
//        let Answer2 = Add_Two_Numbers()
//        Answer2.ExampleTest()
        
//        let Answer3 = Longest_Substring_Without_Repeating_Characters()
//        Answer2.ExampleTest()
        
        let Answer4 = Median_Of_Two_Sorted_Array()
        Answer4.ExampleTest()
        
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

