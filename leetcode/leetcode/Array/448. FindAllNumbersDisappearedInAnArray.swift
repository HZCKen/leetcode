//
//  448. FindAllNumbersDisappearedInAnArray.swift
//  leetcode
//
//  Created by Apple on 2019/10/15.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class FindAllNumbersDisappearedInAnArray {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {

        if nums.isEmpty {
            return [Int]()
        }
        
        var set = Set<Int>(minimumCapacity: nums[0])
        
        for num in nums {
            set.insert(num)
        }

        var result = [Int]()
        
        for i in 0..<nums.count {
            if !set.contains(i) {
                result.append(i)
            }
        }


        return result
    }
}
