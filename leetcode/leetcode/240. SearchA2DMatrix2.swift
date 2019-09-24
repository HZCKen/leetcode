//
//  240. SearchA2DMatrix2.swift
//  leetcode
//
//  Created by Apple on 2019/9/24.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

//编写一个高效的算法来搜索 m x n 矩阵 matrix 中的一个目标值 target。该矩阵具有以下特性：
//
//每行的元素从左到右升序排列。
//每列的元素从上到下升序排列。
//示例:
//
//现有矩阵 matrix 如下：
//
//[
//[1,   4,  7, 11, 15],
//[2,   5,  8, 12, 19],
//[3,   6,  9, 16, 22],
//[10, 13, 14, 17, 24],
//[18, 21, 23, 26, 30]
//]
//给定 target = 5，返回 true。
//
//给定 target = 20，返回 false。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/search-a-2d-matrix-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。


import Foundation

class SearchA2DMatrix2 {
    
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        
        for element in matrix {
            
            if !element.isEmpty {
                
                if element[0] < target && element[element.count - 1] > target {
                    
                    var left = 0
                    var right = element.count - 1
                    
                    while left <= right {
                        if element[left] == target || element[right] == target {
                            return true
                        }
                        
                        left += 1
                        right -= 1
                    }
                    
                }
                
                if element[0] == target || element[element.count - 1] == target{
                    return true
                }
                
            }
            
        }
        
        
        return false
    }
}
