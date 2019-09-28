//
//  217. ContainsDuplicate.swift
//  leetcode
//
//  Created by Apple on 2019/8/30.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ContainsDuplicate {
    
    
//    给定一个整数数组，判断是否存在重复元素。
//
//    如果任何值在数组中出现至少两次，函数返回 true。如果数组中每个元素都不相同，则返回 false。
//
//    示例 1:
//
//    输入: [1,2,3,1]
//    输出: true
//    示例 2:
//
//    输入: [1,2,3,4]
//    输出: false
//    示例 3:
//
//    输入: [1,1,1,3,3,4,3,2,4,2]
//    输出: true

    //解法1
//    func containsDuplicate(_ nums: [Int]) -> Bool {
//
//        if nums.isEmpty{
//
//            return false
//        }
//
//        if nums.count == 2 {
//            return nums.first == nums.last
//        }
//
//        let temp:Set = Set(nums)
//
//        return temp.count != nums.count
//    }
    
    //解法2
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        if nums.isEmpty{
            
            return false
        }
        var dict = [Int : Int]()
        
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                return true
            }
        }
        
        return false
    }
    
}
