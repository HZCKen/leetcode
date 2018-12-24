//
//  344. ReverseString.swift
//  leetcode
//
//  Created by Apple on 2018/12/24.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation



class ReverseString {
    
    // 344反转字符串
    //编写一个函数，其作用是将输入的字符串反转过来。
    //
    //示例 1:
    //
    //输入: "hello"
    //输出: "olleh"
    //示例 2:
    //
    //输入: "A man, a plan, a canal: Panama"
    //输出: "amanaP :lanac a ,nalp a ,nam A"
    func reverseString(_ s: String) -> String {
        
        

        var arr = Array(s)
        
        var start = 0
        var end = arr.count - 1
        
        while start < end {
            
            (arr[start], arr[end]) = (arr[end], arr[start])
            start += 1
            end -= 1
        }
        return String(arr)
    }
}
