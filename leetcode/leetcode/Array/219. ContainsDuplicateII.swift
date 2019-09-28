//
//  219. ContainsDuplicateII.swift
//  leetcode
//
//  Created by Apple on 2019/9/28.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ContainsDuplicateII {
    
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if nums.isEmpty {
            return false
        }
        
        
        var dict = [Int:Int]()
        
        for (index, num) in nums.enumerated() {
            if dict[num] == nil {
                dict[num] = index
            } else {
                if index - dict[num]! <= k {
                    return true
                } else {//更新下标
                    dict[num] = index
                }
            }
        }
        return false
        
    }
    
    
//    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//
//        if nums.isEmpty {
//            return false
//        }
//        var dict = [Int : [Int]]()
//
//        for (index, num) in nums.enumerated() {
//            if dict[num] == nil {
//                dict[num] = [index]
//            } else {
//                dict[num]?.append(index)
//            }
//        }
//
//        for (_, value) in dict {
//            for i in 0..<value.count - 1 {
//                for j in (i + 1)..<value.count {
//                    if value[j] - value[i] <= k {
//                        return true
//                    }
//                }
//            }
//        }
//
//        return false
//    }
}
