//
//  485. MaxConsecutiveOnes.swift
//  leetcode
//
//  Created by Apple on 2019/1/7.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MaxConsecutiveOnes {
//    485. 最大连续1的个数
//    给定一个二进制数组， 计算其中最大连续1的个数。
//
//    示例 1:
//
//    输入: [1,1,0,1,1,1]
//    输出: 3
//    解释: 开头的两位和最后的三位都是连续1，所以最大连续1的个数是 3.
//    注意：
//
//    输入的数组只包含 0 和1。
//    输入数组的长度是正整数，且不超过 10,000。
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        
        var resulet = 0
        var count = 0 // 记录出现1的次数
        for num in nums {
            if num == 1 {
                count += 1
            } else {
                count = 0
            }
            //比较记录最大值
            resulet = max(resulet, count)
        }
        
        return resulet
    }
}
