//
//  704. BinarySearch.swift
//  leetcode
//
//  Created by Apple on 2019/10/31.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class BinarySearch {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            
            let mid = (left + right) / 2
            
            if nums[mid] == target {
                return mid
            } else if nums[mid] < target {
                left = mid + 1
            } else  {
                right = mid - 1
            }
        }
        
        
        
        return -1
    }
}
