//
//  70. ClimbingStairs.swift
//  leetcode
//
//  Created by Apple on 2019/9/3.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ClimbingStairs {
    func climbStairs(_ n: Int) -> Int {
        if (n == 0) {
            return 1;
        } else if (n == 1 || n == 2 ) {
            return n;
        } else {
            //使用递归会超时
            //斐波那契公式 Fib(n)=Fib(n−1)+Fib(n−2)
//            return climbStairs(n-1) + climbStairs(n-2);

            var a = 1
            var b = 2
            var result = 0
            
            for _ in 2..<n {
                result = a + b
                a = b
                b = result
            }
            return result
            
        }
    }
}
