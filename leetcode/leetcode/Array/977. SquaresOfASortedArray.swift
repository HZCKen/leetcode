//
//  977. SquaresOfASortedArray.swift
//  leetcode
//
//  Created by Apple on 2019/8/30.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class SquaresOfASortedArray {
    
//    给定一个按非递减顺序排序的整数数组 A，返回每个数字的平方组成的新数组，要求也按非递减顺序排序。
//
//
//
//    示例 1：
//
//    输入：[-4,-1,0,3,10]
//    输出：[0,1,9,16,100]
//    示例 2：
//
//    输入：[-7,-3,2,3,11]
//    输出：[4,9,9,49,121]
    
    
    func sortedSquares(_ A: [Int]) -> [Int] {
        var length = A.count
        var result = Array.init(repeating: 0, count: A.count)
        var left = 0
        var right = A.count - 1
        
        while left <= right {
            
            let leftValue = A[left] * A[left]
            let rightValue = A[right] * A[right]
            
            if leftValue > rightValue {
                result[length - 1] = leftValue
                left += 1
            } else {
                result[length - 1] = rightValue
                right -= 1
            }
            length -= 1
        }
        
        return result
        
        
//        var result = [Int]()
//        
//        for item in A {
//            result.append(item * item)
//        }
//        
//        
//        return result.sorted()   
    }
    
}
