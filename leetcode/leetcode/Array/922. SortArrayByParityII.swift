//
//  922. SortArrayByParityII.swift
//  leetcode
//
//  Created by Ken_cheng on 2019/10/4.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//给定一个非负整数数组 A， A 中一半整数是奇数，一半整数是偶数。
//
//对数组进行排序，以便当 A[i] 为奇数时，i 也是奇数；当 A[i] 为偶数时， i 也是偶数。
//
//你可以返回任何满足上述条件的数组作为答案。
//
//
//
//示例：
//
//输入：[4,2,5,7]
//输出：[4,5,2,7]
//解释：[4,7,2,5]，[2,5,4,7]，[2,7,4,5] 也会被接受。
//
//
//提示：
//
//2 <= A.length <= 20000
//A.length % 2 == 0
//0 <= A[i] <= 1000
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/sort-array-by-parity-ii
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class SortArrayByParityII {

//    思路：找到奇指针不满足的位置；找到偶指针不满足的位置；交换即可；


    func sortArrayByParityII(_ A: [Int]) -> [Int] {
            var result = A

            var odd = 1 //奇
            var even = 0 //偶

            while odd < result.count && even < result.count {

                while odd < result.count && result[odd] % 2 != 0 {
                    odd += 2
                }

                while even < result.count && result[even] % 2 == 0 {
                    even += 2
                }

                let temp = result[odd]
                result[odd] = result[even]
                result[even] = temp
            }


            return result
    }
}
