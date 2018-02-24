//
//  Best_Time_To_Buy_And_Sell_Stock.swift
//  LeetCodePractice
//
//  Created by 庄晓伟 on 2018/2/24.
//  Copyright © 2018年 Zhuang Xiaowei. All rights reserved.
//

/*
 Say you have an array for which the ith element is the price of a given stock on day i.
 
 If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.
 
 Example 1:
    Input: [7, 1, 5, 3, 6, 4]
    Output: 5
 
 max. difference = 6-1 = 5 (not 7-1 = 6, as selling price needs to be larger than buying price)
 
 Example 2:
    Input: [7, 6, 4, 3, 1]
    Output: 0
 
 In this case, no transaction is done, i.e. max profit = 0.
 
 */

import UIKit

class Best_Time_To_Buy_And_Sell_Stock: Solution {

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
            [0, 6, -3, 7]
            ].forEach { nums in
                print("Input: \(nums), output: \(self.maxProfit(nums))")
        }
    }
    
    func maxProfit(_ prices: [Int]) -> Int {
        if prices.count <= 1 {
            return 0
        }
        var profit = 0
        var buyPrice = prices[0]
        for day in 1..<prices.count {
            if buyPrice > prices[day] {
                buyPrice = prices[day]
            }
            let calProfit = prices[day] - buyPrice
            profit = calProfit > profit ? calProfit : profit
        }
        /// 下面的解法和Maximum_Subarray是一样的
//        guard prices.count > 1 else {
//            return 0
//        }
//        var maxCur = 0, profit = 0
//        for day in 1..<prices.count {
//            let tmp = maxCur + prices[day] - prices[day - 1]
//            maxCur = max(0, tmp)
//            profit = max(maxCur, profit)
//        }
        return profit
    }
}
