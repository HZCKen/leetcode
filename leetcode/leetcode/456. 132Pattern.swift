//
//  456. 132Pattern.swift
//  leetcode
//
//  Created by Apple on 2019/10/11.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//从后往前遍历找到符合条件的次大值（注意只用找次大值）
//之后只需要和次大数值比较即可，如果当前元素<次大值则返回true
//
//寻找右面符合条件的最大值和次大值的方法如下：
//
//如果当前元素小于栈顶元素，则入栈
//如果当前元素大于栈顶元素，则先出栈，出到当前元素小于栈顶元素（之前的一个局部最大值），出的同时让second和出栈元素比较，取较大的那个（临界条件）
//
//作者：jiaxin-2
//链接：https://leetcode-cn.com/problems/132-pattern/solution/cong-hou-xiang-qian-zhao-dao-zui-da-de-ci-da-zhi-b/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

class Find132pattern {
    func find132pattern(_ nums: [Int]) -> Bool {
        
        if nums.count < 2 {
            return false
        }

    
        
        var secondMax = Int.min
        var stack = [Int]()
        stack.append(nums[nums.count - 1])
        for i in (0...(nums.count - 2)).reversed() {
            print(i)
//            print( "secondMax\(secondMax) nums[i] \(nums[i])  stack\(stack.last)")

            if nums[i] < secondMax {
                return true
            } else {
                while !stack.isEmpty && nums[i] > stack.last! {
                    secondMax = max(secondMax, stack.popLast()!)
                }
                stack.append(nums[i])
            }
        }
        
        return false
    }
}
