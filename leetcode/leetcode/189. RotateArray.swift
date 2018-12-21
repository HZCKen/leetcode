//
//  189. RotateArray.swift
//  leetcode
//
//  Created by Apple on 2018/12/21.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation
//189.旋转数组
//给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。
//
//示例 1:
//
//输入: [1,2,3,4,5,6,7] 和 k = 3
//输出: [5,6,7,1,2,3,4]
//解释:
//向右旋转 1 步: [7,1,2,3,4,5,6]
//向右旋转 2 步: [6,7,1,2,3,4,5]
//向右旋转 3 步: [5,6,7,1,2,3,4]
//示例 2:
//
//输入: [-1,-100,3,99] 和 k = 2
//输出: [3,99,-1,-100]
//解释:
//向右旋转 1 步: [99,-1,-100,3]
//向右旋转 2 步: [3,99,-1,-100]

class RotateArray {
    
  
     func rotate(_ nums: inout [Int], _ k: Int) {
        
        var res = Array(repeating: 0, count: nums.count)
        // (当前位置 + k) % 数组长度 = 移动后的位置
        for i in 0..<nums.count {
            let index = (i + k) % nums.count
            res[index] = nums[i]
        }
        nums = res
        
        
        //效率低
//        for _ in 0..<k {
//            let temp = nums.removeLast()
//            nums.insert(temp, at: 0)
//        }
    }
}
