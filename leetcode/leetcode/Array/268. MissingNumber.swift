//
//  268. MissingNumber.swift
//  leetcode
//
//  Created by Apple on 2019/1/4.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MissingNumber {
//    268. 缺失数字
//    给定一个包含 0, 1, 2, ..., n 中 n 个数的序列，找出 0 .. n 中没有出现在序列中的那个数。
//
//    示例 1:
//
//    输入: [3,0,1]
//    输出: 2
//    示例 2:
//
//    输入: [9,6,4,2,3,5,7,0,1]
//    输出: 8
//    说明:
//    你的算法应具有线性时间复杂度。你能否仅使用额外常数空间来实现?
    
    func missingNumber(_ nums: [Int]) -> Int {
        
        var sum = 0
        //先求和，减去数组里面的值，缺的就是差值
        for i in 0..<nums.count + 1 {
            sum += i
        }
        
        for num in nums {
            sum -= num
        }
        
        
        return sum
    }
}


