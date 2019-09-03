//
//  78. Subsets.swift
//  leetcode
//
//  Created by Apple on 2019/9/3.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class Subsets {
    
//    给定一组不含重复元素的整数数组 nums，返回该数组所有可能的子集（幂集）。
//
//    说明：解集不能包含重复的子集。
//
//    示例:
//
//    输入: nums = [1,2,3]
//    输出:
//    [
//        [3],
//        [1],
//        [2],
//        [1,2,3],
//        [1,3],
//        [2,3],
//        [1,2],
//        []
//    ]
//
//    来源：力扣（LeetCode）
//    链接：https://leetcode-cn.com/problems/subsets
//    著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
    
    func subsets(_ nums: [Int]) -> [[Int]] {
        
        var result = [[Int]]()
        result.append([])
        if nums.isEmpty {
            return result
        }
        //eg : nums = [1] result = [[]]
        for i in 0..<nums.count {
//            循环向结果数组增加新的元素
            for j in 0..<result.count {
                var temp = result[j] // []
                temp.append(nums[i]) // [1]
                result.append(temp)  // [[], [1]]
            }
        }
        return result
    }
}
