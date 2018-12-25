//
//  434. NumberOfSegmentsInAString.swift
//  leetcode
//
//  Created by Apple on 2018/12/25.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//434. 字符串中的单词数
//统计字符串中的单词个数，这里的单词指的是连续的不是空格的字符。
//
//请注意，你可以假定字符串里不包括任何不可打印的字符。
//
//示例:
//
//输入: "Hello, my name is John"
//输出: 5

class NumberOfSegmentsInAString {
    
    
    func countSegments(_ s: String) -> Int {

        let arr = Array(s)
        
        if arr.isEmpty {
            return 0
        }
        /*
         ** 单词结束的标志是遇到空白字符,设置flag = 0
         ** 单词开始的标记是第一次遇到非空白字符设置flag = 1
         */
        var res = 0
        var flag = 0
        for c in arr {
            if c == " " {
                flag = 0
            }
            if c != " " && flag == 0 {
                res += 1
                flag = 1
            }
        }
        
        return res
    }
    
    
}
