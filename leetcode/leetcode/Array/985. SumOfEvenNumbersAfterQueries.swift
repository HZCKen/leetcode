//
//  985. SumOfEvenNumbersAfterQueries.swift
//  leetcode
//
//  Created by Apple on 2019/8/29.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class SumOfEvenNumbersAfterQueries {
    
//    给出一个整数数组 A 和一个查询数组 queries。
//    
//    对于第 i 次查询，有 val = queries[i][0], index = queries[i][1]，我们会把 val 加到 A[index] 上。然后，第 i 次查询的答案是 A 中偶数值的和。
//    
//    （此处给定的 index = queries[i][1] 是从 0 开始的索引，每次查询都会永久修改数组 A。）
//    
//    返回所有查询的答案。你的答案应当以数组 answer 给出，answer[i] 为第 i 次查询的答案。
//    
//      
//    
//    示例：
//    
//    输入：A = [1,2,3,4], queries = [[1,0],[-3,1],[-4,0],[2,3]]
//    输出：[8,6,2,4]
//    解释：
//    开始时，数组为 [1,2,3,4]。
//    将 1 加到 A[0] 上之后，数组为 [2,2,3,4]，偶数值之和为 2 + 2 + 4 = 8。
//    将 -3 加到 A[1] 上之后，数组为 [2,-1,3,4]，偶数值之和为 2 + 4 = 6。
//    将 -4 加到 A[0] 上之后，数组为 [-2,-1,3,4]，偶数值之和为 -2 + 4 = 2。
//    将 2 加到 A[3] 上之后，数组为 [-2,-1,3,6]，偶数值之和为 -2 + 6 = 4。
    
    
    func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        
        var tempA = A
        var result = [Int]()
        //计算偶数和
        var sum = 0
        for i in tempA {
            if i % 2 == 0 {
                sum += i
            }
        }
        
        for i in 0..<queries.count {
            let index = queries[i][1]
            let val = queries[i][0]
            //计算原值和val
            var temp = tempA[index]
            temp += val
            tempA[index] = temp
            if temp % 2 == 0 {
                if val % 2 == 0 { //如果val为偶数 即原来的值也是偶数 则只需要val
                    sum += val
                } else { //如果val为奇数 即原来的值也是奇数 则全部添加
                    sum += temp
                }
            } else {
                if val % 2 != 0 { //如果值为奇数 则原来的值为偶数 需要减去原来的值（已经加上了val）和val
                    sum -= (temp - val)
                }

            }
            result.append(sum)
        }
        
        return result
    }
    
}
