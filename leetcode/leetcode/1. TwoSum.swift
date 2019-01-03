//
//  1. TwoSum.swift
//  leetcode
//
//  Created by Apple on 2019/1/3.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class TwoSum {
//   1. 两数之和
//    给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
//
//    你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
//
//    示例:
//
//    给定 nums = [2, 7, 11, 15], target = 9
//
//    因为 nums[0] + nums[1] = 2 + 7 = 9
//    所以返回 [0, 1]
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {

        var dic = [Int : Int]()
        
        for i in 0..<nums.count {
            if let last = dic[target - nums[i]] {
                return [last, i]
            } else {
                dic[nums[i]] = i
            }
        }

        return [Int]()
    }
}
