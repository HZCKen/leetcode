//
//  74. SearchA2DMatrix.swift
//  leetcode
//
//  Created by Apple on 2019/9/18.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//编写一个高效的算法来判断 m x n 矩阵中，是否存在一个目标值。该矩阵具有如下特性：
//
//每行中的整数从左到右按升序排列。
//每行的第一个整数大于前一行的最后一个整数。
//示例 1:
//
//输入:
//matrix = [
//[1,   3,  5,  7],
//[10, 11, 16, 20],
//[23, 30, 34, 50]
//]
//target = 3
//输出: true
//示例 2:
//
//输入:
//matrix = [
//[1,   3,  5,  7],
//[10, 11, 16, 20],
//[23, 30, 34, 50]
//]
//target = 13
//输出: false
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/search-a-2d-matrix
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。


class SearchA2DMatrix {
    
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var result = false
        
        for ele in matrix {
            if !ele.isEmpty {
                
                let first = ele.first!
                let last = ele.last!
                
                if first < target && last > target {
                    for num in ele {
                        if target == num {
                            result = true
                            break
                        }
                    }
                }
            }
        }
        
        return result
    }
}
