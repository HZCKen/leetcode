//
//  260. SingleNumberIII.swift
//  leetcode
//
//  Created by Apple on 2019/10/30.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation
//260. 只出现一次的数字 III
//给定一个整数数组 nums，其中恰好有两个元素只出现一次，其余所有元素均出现两次。 找出只出现一次的那两个元素。
//
//示例 :
//
//输入: [1,2,1,3,2,5]
//输出: [3,5]
//注意：
//
//结果输出的顺序并不重要，对于上面的例子， [5, 3] 也是正确答案。
//你的算法应该具有线性时间复杂度。你能否仅使用常数空间复杂度来实现？
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/single-number-iii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class SingleNumberIII {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var dict = [Int : Int]()

        for num in nums {
            if dict[num] == nil {
                dict[num] = 1
            } else {
                dict[num]! += 1
            }
        }
        var result = [Int]()
        for (key,value) in dict {
            if value == 1 {
                result.append(key)
            }
        }
        return result
    }
}
