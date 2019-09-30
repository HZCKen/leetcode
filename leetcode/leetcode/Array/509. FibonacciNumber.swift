//
//  509. FibonacciNumber.swift
//  leetcode
//
//  Created by Apple on 2019/9/30.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class FibonacciNumber {
    func fib(_ N: Int) -> Int {
        
        if N == 0 {
            return 0
        }
        
        if N == 1 {
            return 1
        }
        
        return fib(_:N - 2) + fib(_: N - 1)
    }
}
