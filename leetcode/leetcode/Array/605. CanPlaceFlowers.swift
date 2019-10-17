//
//  605. CanPlaceFlowers.swift
//  leetcode
//
//  Created by Apple on 2019/10/17.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//假设你有一个很长的花坛，一部分地块种植了花，另一部分却没有。可是，花卉不能种植在相邻的地块上，它们会争夺水源，两者都会死去。
//
//给定一个花坛（表示为一个数组包含0和1，其中0表示没种植花，1表示种植了花），和一个数 n 。能否在不打破种植规则的情况下种入 n 朵花？能则返回True，不能则返回False。
//
//示例 1:
//
//输入: flowerbed = [1,0,0,0,1], n = 1
//输出: True
//示例 2:
//
//输入: flowerbed = [1,0,0,0,1], n = 2
//输出: False
//注意:
//
//数组内已种好的花不会违反种植规则。
//输入的数组长度范围为 [1, 20000]。
//n 是非负整数，且不会超过输入数组的大小。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/can-place-flowers
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class CanPlaceFlowers {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        
        //前后补0 避免边界问题
        var flower = flowerbed
        flower.insert(0, at: 0)
        flower.append(0)
        
        var count = 0 // 符合种花的次数
        var index = 1 // 当前的位置
        
        while index < flowerbed.count {
            if flower[index - 1] == 0 && flower[index] == 0 && flower[index + 1] == 0 { //当前位置和前后为0则符合种花条件
                count += 1
                index += 2
            } else {
                index += 1
            }
        }
        
        
        return count >= n
    }
}
