//
//  Best_Time_To_Buy_And_Sell_Stock_II.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/24.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

import UIKit

class Best_Time_To_Buy_And_Sell_Stock_II: Solution {

    override func ExampleTest() {
        [
            [],
            [2],
            [1, 2],
            [2, 1],
            [7, 1, 5, 3, 6, 4],
            [7, 6, 4, 3, 1],
            [7, 1, 6, 3, 5, 4],
            [7, 2, 6, 1],
            [0, 6, -3, 7],
            [2,1,2,0,1] // expected 2
            ].forEach { nums in
                print("Input: \(nums), output: \(self.maxProfit(nums))")
        }
    }
    
    func maxProfit(_ prices: [Int]) -> Int {
        guard prices.count > 1 else {
            return 0
        }
        var profit = 0
        for day in 1..<prices.count {
            let tmp = profit + prices[day] - prices[day - 1]
            profit = max(profit, tmp)
        }
        return profit
    }
}
