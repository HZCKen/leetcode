//
//  1249. MinimumRemoveToMakeValidParentheses.swift
//  leetcode
//
//  Created by Apple on 2019/11/13.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MinimumRemoveToMakeValidParentheses {

    func minRemoveToMakeValid(_ s: String) -> String {
        
        var result = ""
        var temp = ""
        //正向遍历 剔除多余的 ）
        var left = 0
        for c in s {
            if c == "(" {
                left += 1
                temp.append(c)
            } else if c == ")" {
                if left > 0 {
                    left -= 1
                    temp.append(c)
                }
            } else {
                temp.append(c)
            }
        }
        //倒序遍历 剔除多余的（
        var right = 0
        for c in temp.reversed() {
            if c == ")" {
                right += 1
                result.insert(c, at: result.startIndex)
            } else if c == "(" {
                if right > 0 {
                    right -= 1
                    result.insert(c, at: result.startIndex)
                }
            } else {
                result.insert(c, at: result.startIndex)
            }
        }
        
        return result
    }
    
}
