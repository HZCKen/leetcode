//
//  287. FindTheDuplicateNumber.swift
//  leetcode
//
//  Created by Apple on 2019/9/29.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class FindTheDuplicateNumber {
    func findDuplicate(_ nums: [Int]) -> Int {
        var dict = [Int : Int]()
        
        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                return num
            }
        }
        
        return -1
    }
}
