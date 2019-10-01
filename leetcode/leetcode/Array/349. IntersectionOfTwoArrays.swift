//
//  349. IntersectionOfTwoArrays.swift
//  leetcode
//
//  Created by Ken_cheng on 2019/10/1.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation


class IntersectionOfTwoArrays {

    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var result = [Int]()
        var dict = [Int:Int]()

        var longNums = [Int]()
        var shortNums = [Int]()

        if nums1.count > nums2.count {
            longNums = nums1
            shortNums = nums2
        } else {
            longNums = nums2
            shortNums = nums1
        }

        for num in shortNums {
            dict[num] = 1
        }

        var left = 0
        var right = longNums.count - 1

        while left < right {
            if dict[longNums[left]] != nil {
                if !result.contains(longNums[left]) {
                    result.append(longNums[left])
                }
            }
            if dict[longNums[right]] != nil {
                if !result.contains(longNums[right]) {
                    result.append(longNums[right])
                }
            }

            left += 1
            right -= 1
        }

        return result
    }
}
