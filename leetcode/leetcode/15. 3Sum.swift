//
//  15. 3Sum.swift
//  leetcode
//
//  Created by Apple on 2019/9/12.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//给定一个包含 n 个整数的数组 nums，判断 nums 中是否存在三个元素 a，b，c ，使得 a + b + c = 0 ？找出所有满足条件且不重复的三元组。
//
//注意：答案中不可以包含重复的三元组。
//
//例如, 给定数组 nums = [-1, 0, 1, 2, -1, -4]，
//
//满足要求的三元组集合为：
//[
//[-1, 0, 1],
//[-1, -1, 2]
//]
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/3sum
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

//思路
//标签：数组遍历
//首先对数组进行排序，排序后固定一个数 nums[i]nums[i]，再使用左右指针指向 nums[i]nums[i]后面的两端，数字分别为 nums[L]nums[L] 和 nums[R]nums[R]，计算三个数的和 sumsum 判断是否满足为 00，满足则添加进结果集
//如果 nums[i]nums[i]大于 00，则三数之和必然无法等于 00，结束循环
//如果 nums[i]nums[i] == nums[i-1]nums[i−1]，则说明该数字重复，会导致结果重复，所以应该跳过
//当 sumsum == 00 时，nums[L]nums[L] == nums[L+1]nums[L+1] 则会导致结果重复，应该跳过，L++L++
//当 sumsum == 00 时，nums[R]nums[R] == nums[R-1]nums[R−1] 则会导致结果重复，应该跳过，R--R−−
//时间复杂度：O(n^2)O(n
//    2
//)，nn 为数组长度



class threeSum {
    
//    [-1, 0, 1, 2, -1, -4]
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var result = [[Int]]()
//        [-4, -1, -1, 0, 1, 2]
        let temp = nums.sorted()
        
        for index in 0..<temp.count {
            
            let k = temp[index]
            if k > 0 {
                //排序后如果大于0,后续相加肯定大于0,结束
                break
            }
            
            if index > 0 && k == temp[index - 1] {
                //去重，当前的与上一个是一致的，这轮不执行
                continue
            }
            
            var left = index + 1
            var right = temp.count - 1
            
            while left < right {
                
                let leftValue = temp[left]
                let rightValue = temp[right]

                let sum = k + leftValue + rightValue
                
                if sum < 0 { //小于0 代表左边的值比较小，左边向右移动一位
                    left += 1
                } else if sum > 0 {//大于0 代表右边的值比较大，右边向左移动一位
                    right -= 1
                } else {
                    var temp2 = [k, leftValue, rightValue]
                    temp2 = temp2.sorted()
                    result.append(temp2)
                    
                    while left < right && temp[left] == temp[left + 1] {
                        //去重  当前的值与下一位相同
                        left += 1
                    }
                    
                    while left < right && temp[right] == temp[right - 1] {
                        //去重  当前的值与上一位相同
                        right -= 1
                    }

                    left += 1
                    right -= 1
                }
            }
        }
        
        return result
        
        //超时
//        var result = [[Int]]()
//
//        for i in 0..<nums.count {
//            let num1 = nums[i]
//            for j in (i + 1)..<nums.count {
//                let num2 = nums[j]
//                for k in (j + 1)..<nums.count {
//                    let num3 = nums[k]
//                    if num1 + num2 + num3 == 0 {
//                        var temp = [num1, num2, num3]
//                        temp = temp.sorted()
//                        if result.isEmpty {
//                            result.append(temp)
//                        } else {
//                            var isInclude = false
//                            for re in result {
//                                if re[0] == temp[0] && re[1] == temp[1] && re[2] == temp[2] {
//                                    isInclude = true
//                                }
//                            }
//                            if isInclude == false {
//                                result.append(temp)
//                            }
//                        }
//
//                    }
//                }
//            }
//        }
//
//        return result
    }
}
