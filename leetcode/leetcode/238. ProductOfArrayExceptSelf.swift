//
//  238. ProductOfArrayExceptSelf.swift
//  leetcode
//
//  Created by Apple on 2019/9/12.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation
//给定长度为 n 的整数数组 nums，其中 n > 1，返回输出数组 output ，其中 output[i] 等于 nums 中除 nums[i] 之外其余各元素的乘积。
//
//示例:
//
//输入: [1,2,3,4]
//输出: [24,12,8,6]
//说明: 请不要使用除法，且在 O(n) 时间复杂度内完成此题。
//
//进阶：
//你可以在常数空间复杂度内完成这个题目吗？（ 出于对空间复杂度分析的目的，输出数组不被视为额外空间。）
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/product-of-array-except-self
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

/*
 *
 求解方法是 先取1，求剩下元素的成绩。再取2，再求剩下元素的乘积。。
 这种做法时间复杂度O(n2)，因为要套两层loop。其实有很多的重复求乘积的步骤，在此优化
             [1, 2, 3, 4]
 左边的乘积    [1, 1, 2, 6]
 右边的乘积    [24,12,4, 1]
 结果 = 左*右     [24,12,8, 6]
 */

class ProductOfArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        
        var result = Array<Int>(repeating: 0, count: nums.count)
        var left = Array<Int>(repeating: 1, count: nums.count)
        var right = Array<Int>(repeating: 1, count: nums.count)
        
        for i in 1..<nums.count {
            left[i] = left[i - 1] * nums[i - 1]
        }
        for j in stride(from: nums.count - 2, to: -1, by: -1) {
            right[j] = right[j + 1] *  nums[j + 1]
        }
        
        for i in 0..<nums.count {
            result[i] = left[i] * right[i]
        }
        
        return result
        //超时
//        for i in 0..<nums.count - 1 {
//            var temp = 1
//            for j in 0..<nums.count - 1 {
//                if i != j {
//                    temp *= nums[j]
//                }
//            }
//            resutl.append(temp)
//        }
//        return resutl
    }
}
