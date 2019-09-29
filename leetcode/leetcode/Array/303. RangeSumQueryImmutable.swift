//
//  303. RangeSumQueryImmutable.swift
//  leetcode
//
//  Created by Apple on 2019/9/29.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//给定一个整数数组  nums，求出数组从索引 i 到 j  (i ≤ j) 范围内元素的总和，包含 i,  j 两点。
//
//示例：
//
//给定 nums = [-2, 0, 3, -5, 2, -1]，求和函数为 sumRange()
//
//sumRange(0, 2) -> 1
//sumRange(2, 5) -> -1
//sumRange(0, 5) -> -3
//说明:
//
//你可以假设数组不可变。
//会多次调用 sumRange 方法。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/range-sum-query-immutable
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

//
//class NumArray {
//
//    var nums = [Int]()
//
//    init(_ nums: [Int]) {
//        self.nums = nums
//    }
//
//    func sumRange(_ i: Int, _ j: Int) -> Int {
//        var result = 0
//        for index in i...j {
//            result += nums[index]
//        }
//        return result
//    }
//}


class NumArray {
    
    var sumNums = [Int]()
    
    init(_ nums: [Int]) {
        if !nums.isEmpty {
            sumNums.append(nums[0])
            for num in nums {
                sumNums.append(sumNums.last! + num)
            }
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return sumNums[j + 1] - sumNums[i]
    }
}
