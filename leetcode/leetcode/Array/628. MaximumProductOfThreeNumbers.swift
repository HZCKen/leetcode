//
//  628. MaximumProductOfThreeNumbers.swift
//  leetcode
//
//  Created by Apple on 2019/1/7.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MaximumProductOfThreeNumbers {
//    628. 三个数的最大乘积
//    给定一个整型数组，在数组中找出由三个数组成的最大乘积，并输出这个乘积。
//
//    示例 1:
//
//    输入: [1,2,3]
//    输出: 6
//    示例 2:
//
//    输入: [1,2,3,4]
//    输出: 24
//    注意:
//
//    给定的整型数组长度范围是[3,104]，数组中所有的元素范围是[-1000, 1000]。
//    输入的数组中任意三个数的乘积不会超出32位有符号整数的范围。
    
    
    func maximumProduct(_ nums: [Int]) -> Int {
        
        var temp = nums
        temp.sort()
        
        let a = temp[0] * temp[1] * temp[temp.count - 1]
        
        let b = temp[temp.count - 3] * temp[temp.count - 2] * temp[temp.count - 1]
        
        return a>b ? a:b
    }
}
