//
//  350. IntersectionOfTwoArraysII.swift
//  leetcode
//
//  Created by Apple on 2019/11/4.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class IntersectionOfTwoArraysII {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var dict = [Int:Int]()
        
        for num in nums1 {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
        }
        
        var result = [Int]()
        for num2 in nums2 {
            if let count = dict[num2] {
                if count > 0 {
                    dict[num2] = count - 1 //意味着有交集
                    result.append(num2)
                }
            }
        }
                
        return result
    }
}
