//
//  436. FindRightInterval.swift
//  leetcode
//
//  Created by Apple on 2019/10/8.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class FindRightInterval {
    
    func findRightInterval(_ intervals: [[Int]]) -> [Int] {
        
        if intervals.count <= 1 {
            return [-1]
        }
        
        var result = [Int]()
        
        var dict = [Int : Int]()
        
        for (i, interval) in intervals.enumerated() {
            dict[interval[0]] = i
        }
        let keys = dict.keys.sorted()

        for i in 0..<intervals.count {
            for j in 0..<keys.count {
                let key = keys[j]
                if intervals[i][1] <= key {
                    result.append(dict[key]!)

                } else {
                    result.append(-1)
                }
                
            }
        }

        
        return result
    }
    // 超时
//    func findRightInterval(_ intervals: [[Int]]) -> [Int] {
//
//        if intervals.count <= 1 {
//            return [-1]
//        }
//
//        //
//        var result = [Int]()
//
//        for i in 0..<intervals.count {
//            var min = Int.max
//            var minIndex = -1
//            for j in 0..<intervals.count {
//                if intervals[j].first! >= intervals[i].last! && intervals[j].first! < min {
//                    min = intervals[j].first!
//                    minIndex = j
//                }
//            }
//            result.append(minIndex)
//
//        }
//
//        return result
//    }
    
}
