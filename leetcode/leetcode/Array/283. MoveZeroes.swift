//
//  283. MoveZeroes.swift
//  leetcode
//
//  Created by Apple on 2019/1/4.
//  Copyright © 2019年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MoveZeroes {
//    283. 移动零
//    给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
//
//    示例:
//
//    输入: [0,1,0,3,12]
//    输出: [1,3,12,0,0]
//    说明:
//
//    必须在原数组上操作，不能拷贝额外的数组。
//    尽量减少操作次数。
    
    func moveZeroes(_ nums: inout [Int]) {
        
        var zeroIndexs = [Int]()
        for i in 0..<nums.count {
            if nums[i] == 0 {
                zeroIndexs.append(i)
            }
        }
        
        for i in zeroIndexs.reversed() {
            nums.remove(at: i)
            nums.append(0)
        }
        
    }
    
}
