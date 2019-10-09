//
//  454. 4SumII.swift
//  leetcode
//
//  Created by Apple on 2019/10/9.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class fourSumCount {
    func fourSumCount(_ A: [Int], _ B: [Int], _ C: [Int], _ D: [Int]) -> Int {
        
//        1.记录A和B之和及其出现的次数,记录dict，key为和，value为次数
//        2.求出C和D之和取负数，判断是否在dict中，如果有值则result += value
        
        var dict = [Int:Int]()
        for a in A {
            for b in B {
                let sum = a + b
                if dict[sum] == nil {
                    dict[sum] = 1
                } else {
                    dict[sum]! += 1
                }
            }
        }
        
        var result = 0
        
        for c in C {
            for d in D {
                let sum = -c - d
                if dict[sum] != nil {
                    result += dict[sum]!
                }
            }
        }
        
        
        
        return result
    }
}
