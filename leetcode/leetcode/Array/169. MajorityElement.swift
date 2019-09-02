//
//  169. MajorityElement.swift
//  leetcode
//
//  Created by Apple on 2019/9/2.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        let majortiy = nums.count / 2

        var dict = [Int:Int]()
        
        
        for num in nums {
            if var value = dict[num] {
                value += 1
                dict[num] = value
            } else {
                dict[num] = 1
            }
        }

        
        for (key, value) in dict {
            if value > majortiy {
                return key
            }
        }
        
        return -1
//        var maxValue = dict.values.first!
//        var maxKey = dict.keys.first!
//        for (key, value) in dict {
//            if value > maxValue {
//                maxValue = value
//                maxKey = key
//            }
//        }
//
//
//        if maxValue > majortiy {
//            return maxKey
//        } else {
//            return -1
//        }
        
        
//        var result = nums[0]
//        let majortiy = nums.count / 2
//
//        for item in nums {
//            var count = 0
//            result = item
//            for num in nums {
//                if num == result {
//                    count += 1
//                }
//            }
//            if count > majortiy {
//                return result
//            }
//
//        }
//        return -1
    }
}
