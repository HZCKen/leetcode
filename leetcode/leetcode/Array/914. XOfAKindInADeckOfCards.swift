//
//  914. XOfAKindInADeckOfCards.swift
//  leetcode
//
//  Created by Apple on 2019/8/29.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class XOfAKindInADeckOfCards {
    func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        //记录每个数出现的次数
        var records = [Int:Int]()
        
        for item in deck {
            if var record = records[item] {
                record += 1
                records[item] = record
            } else {
                records[item] = 1
            }
        }
        //取所有出现的次数组
        let recordCount = records.values
        
        var result = recordCount.first
        
        for i in recordCount {
            if i != 0 {
              result = getCommonDivisor(a: i, b: result!)
            }
        }

        return result ?? 0 >= 2
    }
    
    func getCommonDivisor(a:Int, b:Int)->Int {
        var tempA = a
        var tempB = b
        while tempA % tempB != 0 {
            let c:Int = tempA % tempB
            tempA = tempB
            tempB = c
        }
        return tempB
    }
}
