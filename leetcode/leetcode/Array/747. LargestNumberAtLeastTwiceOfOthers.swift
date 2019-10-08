//
//  747. LargestNumberAtLeastTwiceOfOthers.swift
//  leetcode
//
//  Created by Apple on 2019/10/8.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class LargestNumberAtLeastTwiceOfOthers {
    
    
    func dominantIndex(_ nums: [Int]) -> Int {
        
        let temp = nums.sorted()
        
        let m = temp[temp.count - 1]
        let n = temp[temp.count - 2]
        
        if m < 2 * n {
            return -1
        }
        
        var left = 0
        var right = nums.count - 1
        while left <= right {
            if m == nums[left] {
                return left
            }
            if m == nums[right] {
                return right
            }
            left += 1
            right -= 1
        }
        
        return -1
    }
}
