//
//  905. SortArrayByParity.swift
//  leetcode
//
//  Created by Apple on 2019/1/7.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class SortArrayByParity {
    
//    905. 按奇偶排序数组
//    给定一个非负整数数组 A，返回一个由 A 的所有偶数元素组成的数组，后面跟 A 的所有奇数元素。
//    
//    你可以返回满足此条件的任何数组作为答案。
//    
//    
//    
//    示例：
//    
//    输入：[3,1,2,4]
//    输出：[2,4,3,1]
//    输出 [4,2,3,1]，[2,4,1,3] 和 [4,2,1,3] 也会被接受。
//    
//    
//    提示：
//    
//    1 <= A.length <= 5000
//    0 <= A[i] <= 5000

    
    func sortArrayByParity(_ A: [Int]) -> [Int] {
        
        var a = [Int]()
        var b = [Int]()
        
        var left = 0
        var right = A.count - 1
        
        while left <= right {
            let leftNum = A[left]
            let rightNum = A[right]
            
            if left != right {
                if leftNum % 2 == 0 {
                    a.append(leftNum)
                } else {
                    b.append(leftNum)
                }
                
                if rightNum % 2 == 0 {
                    a.append(rightNum)
                } else {
                    b.append(rightNum)
                }
            } else {
                if leftNum % 2 == 0 {
                    a.append(leftNum)
                } else {
                    b.append(leftNum)
                }
                
            }
            left += 1
            right -= 1
        }
        
//        for num in A {
//            if num % 2 == 0 {
//                a.append(num)
//            } else {
//                b.append(num)
//            }
//        }
        
        a.append(contentsOf: b)
        return a
    }
}
