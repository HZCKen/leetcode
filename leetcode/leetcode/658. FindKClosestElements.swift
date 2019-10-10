//
//  658. FindKClosestElements.swift
//  leetcode
//
//  Created by Apple on 2019/10/10.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//以 arr = [1, 2, 3, 4, 5, 6, 7] , x = 5, k = 3 为例。
//
//思路分析：
//
//1、一个一个删，因为是有序数组，且返回的是连续升序子数组，所以每一次删除的元素一定是位于边界；
//
//2、一共 7 个元素，要保留 3 个元素，因此要删除 4 个元素；
//
//3、因为要删除的元素都位于边界，于是可以使用双指针对撞的方式确定保留区间，即“最优区间”。
//
//作者：liweiwei1419
//链接：https://leetcode-cn.com/problems/find-k-closest-elements/solution/pai-chu-fa-shuang-zhi-zhen-er-fen-fa-python-dai-ma/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

class FindKClosestElements {
    
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        var result = [Int]()
        
        var left = 0
        var right = arr.count - 1
        //排除多少个元素
        var removeCount = arr.count - k
        
        while removeCount > 0 {
//            注意：这里等于号的含义，题目中说，差值相等的时候取小的
//            因此相等的时候，尽量缩小右边界
            if x - arr[left] <= arr[right] - x {
                left += 1
            } else {
                right -= 1
            }
            removeCount -= 1
        }

        for i in left..<(left + k) {
            result.append(arr[i])
        }
        
        
        return result
    }
    
//    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
//        var result = [Int]()
//
//        var left = 0
//        var right = arr.count - k
//
//        while left < right {
//            let mid = left + (right - left) / 2
//
//            if x - arr[left] > arr[mid + k] - x {
//                left = mid + 1
//            } else {
//                right = mid
//            }
//
//        }
//
//        for i in left..<(k + left) {
//            result.append(arr[i])
//        }
//
//
//        return result
//    }
    
}
