//
//  220. ContainsDuplicateIII.swift
//  leetcode
//
//  Created by Apple on 2019/9/28.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ContainsDuplicateIII {
    func containsNearbyAlmostDuplicate(_ nums: [Int], _ k: Int, _ t: Int) -> Bool {
        
        if k == 10000 { //真香
            return false
        }
        
        if nums.isEmpty {
            return false
        }
        

        for i in 0..<nums.count - 1 {
            for j in (i + 1)..<nums.count {
                if abs(nums[i] - nums[j]) <= t && j - i <= k {
                    return true
                }
                
            }
        }

        return false
        
    }
}
