//
//  1207. UniqueNumberOfOccurrences.swift
//  leetcode
//
//  Created by Apple on 2019/11/11.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class UniqueNumberOfOccurrences {
    func uniqueOccurrences(_ arr: [Int]) -> Bool {
     
        
        
        var dict = [Int : Int]()
        
        for num in arr {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
        }
        
        var dict2 = [Int : Int]()
        
        for (_,value) in dict {
            if dict2[value] != nil {
                return false
            } else {
                dict2[value] = 1
            }
        }
        
        
        return true
    }
}
