
//
//  66. PlusOne.swift
//  leetcode
//
//  Created by Apple on 2018/12/24.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class PlusOne {
    //66 加一
//    给定一个由整数组成的非空数组所表示的非负整数，在该数的基础上加一。
//
//    最高位数字存放在数组的首位， 数组中每个元素只存储一个数字。
//
//    你可以假设除了整数 0 之外，这个整数不会以零开头。
//
//    示例 1:
//
//    输入: [1,2,3]
//    输出: [1,2,4]
//    解释: 输入数组表示数字 123。
//    示例 2:
//
//    输入: [4,3,2,1]
//    输出: [4,3,2,2]
//    解释: 输入数组表示数字 4321。
    
    func plusOne(_ digits: [Int]) -> [Int] {
        if digits.isEmpty {
            return [Int]()
        }

        var index = digits.count - 1
        var  result = digits
        //判断要加1的index的值是否为9
        //如果是9的话需要赋值为0，并把index向前移一位
        //当index时第一位时，进位插入1，并返回
        while digits[index] == 9 {
            
            if index == 0 {
                result[index] = 0
                result.insert(1, at: 0)
                return result
            }
            result[index] = 0
            index -= 1
        }
        
        result[index] += 1
        return result
    }
    
}
