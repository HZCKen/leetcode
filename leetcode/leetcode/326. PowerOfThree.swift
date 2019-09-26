//
//  326. PowerOfThree.swift
//  leetcode
//
//  Created by Apple on 2019/9/26.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class PowerOfThree {
    func isPowerOfThree(_ n: Int) -> Bool {
        
        if n < 1 {
            return false
        }
        
        var m = 1
        
        while m < n {
            m *= 3
        }
        
        return m == n
    }
}
