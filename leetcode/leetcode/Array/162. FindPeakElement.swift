//
//  162. FindPeakElement.swift
//  leetcode
//
//  Created by Apple on 2019/9/20.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation


//峰值元素是指其值大于左右相邻值的元素。
//
//给定一个输入数组 nums，其中 nums[i] ≠ nums[i+1]，找到峰值元素并返回其索引。
//
//数组可能包含多个峰值，在这种情况下，返回任何一个峰值所在位置即可。
//
//你可以假设 nums[-1] = nums[n] = -∞。
//
//示例 1:
//
//输入: nums = [1,2,3,1]
//输出: 2
//解释: 3 是峰值元素，你的函数应该返回其索引 2。
//示例 2:
//
//输入: nums = [1,2,1,3,5,6,4]
//输出: 1 或 5
//解释: 你的函数可以返回索引 1，其峰值元素为 2；
//     或者返回索引 5， 其峰值元素为 6。
//说明:
//
//你的解法应该是 O(logN) 时间复杂度的。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/find-peak-element
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class FindPeakElement {
    
    func findPeakElement(_ nums: [Int]) -> Int {
        
        if nums.count == 1 {
            return nums[0]
        }
        
        if nums.count == 2 {
            return nums[0] > nums[1] ? 0 : 1
        }
        
        var left = 1
        var right = nums.count - 2
        
        while left <= right {
            //每次取 left right 相邻的数对比
            let leftFrist = nums[left - 1]
            let leftNum = nums[left]
            let leftSecond = nums[left + 1]
            
            if leftNum > leftFrist && leftNum > leftSecond {
                return left
            }
            
            let rightFrist = nums[right - 1]
            let rightNum = nums[right]
            let rightSecond = nums[right + 1];
            
            if rightNum > rightFrist && rightNum > rightSecond {
                return right
            }
            
            left += 1
            right -= 1
        }
        
        //判断最后一位是不是比前一位大
        if nums[nums.count - 1] > nums[nums.count - 2] {
            return nums.count - 1
        }
        
        
        return 0
    }
    
    
}