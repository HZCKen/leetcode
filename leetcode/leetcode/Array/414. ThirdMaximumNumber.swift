//
//  414. ThirdMaximumNumber.swift
//  leetcode
//
//  Created by Apple on 2019/1/4.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ThirdMaximumNumber {
    func thirdMax(_ nums: [Int]) -> Int {
        
        if nums.count == 1 {
            return nums.first!
        }
        
        if nums.count == 2 {
            return nums[0] > nums[1] ? nums[0] : nums[1]
        }
        
        //使用Set去重
        let set = Set(nums)
        
        var max1 = Int.min
        var max2 = Int.min
        var max3 = Int.min
        
        //更新最大数
        for num in set {
            if num > max1 {
                max3 = max2
                max2 = max1
                max1 = num
            } else if num > max2 && num < max1 {
                max3 = max2
                max2 = num
            } else if num > max3 && num < max2 {
                max3 = num
            }
        }
        
        
        
        return set.count >= 3 ? max3 : max1
    }
}
