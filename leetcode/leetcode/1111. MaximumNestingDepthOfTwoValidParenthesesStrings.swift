//
//  1111. MaximumNestingDepthOfTwoValidParenthesesStrings.swift
//  leetcode
//
//  Created by Apple on 2019/10/16.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//遍历seq，遇到(则压入栈
//遇到)则计算：
//使用stack.size()获取当前深度
//当前遍历stack.pop()和i 获取括号的左右下标
//depth%2 判断负责为1 还是0
//
//作者：huangzhouwu
//链接：https://leetcode-cn.com/problems/maximum-nesting-depth-of-two-valid-parentheses-strings/solution/java-yi-ge-zhan-jie-fa-by-huangzhouwu/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

class MaximumNestingDepthOfTwoValidParenthesesStrings {
    func maxDepthAfterSplit(_ seq: String) -> [Int] {
        
        if seq.isEmpty {
            return [0]
        }
        
        var result = Array(repeating: 0, count: seq.count)
        var stack = [Int]()
        
        for (i, c) in seq.enumerated() {
            if c == "(" {
                stack.append(i)
            } else {
                let deepth = stack.count
                let left = stack.popLast()
                if deepth % 2 == 0 {
                    result[left!] = 1
                    result[i] = 0
                }
                
            }
        }
        
        
        return result
    }
}
