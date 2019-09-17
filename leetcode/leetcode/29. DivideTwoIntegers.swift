//
//  29. DivideTwoIntegers.swift
//  leetcode
//
//  Created by Apple on 2019/9/17.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class DivideTwoIntegers {
    func divide(_ dividend: Int, _ divisor: Int) -> Int {
        
        if divisor == 0 {
            return 0
        }
        
        var result = dividend / divisor
        
        if result > Int32.max {
            result = Int(Int32.max)
        }
        
        return result
        
        
    }
}
