//
//  981. TimeBasedKeyValueStore.swift
//  leetcode
//
//  Created by Apple on 2019/10/25.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class TimeMap {
    var map = [String : [[Int:String]]]()
    
    /** Initialize your data structure here. */
    init() {
        
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if map[key] == nil {
            map[key] = [[timestamp:value]]
        } else {
            map[key]?.append([timestamp:value])
        }
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        
        if let values = map[key] {
            
            var left = 0
            var right = values.count - 1
            
            while left <= right {
                let mid = (left + right) / 2
                if values[mid].first!.key < timestamp {
                    left = mid + 1
                } else if values[mid].first!.key == timestamp {
                    return values[mid].first!.value
                } else {
                    right = mid - 1
                }
            }
        
            if right >= 0 && right <= values.count - 1 {
                return values[right].first?.value ?? ""
            }

            return ""
            
        }
        
        return ""
    }
}
