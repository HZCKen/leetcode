//
//  557. ReverseWordsinaStringIII.swift
//  leetcode
//
//  Created by Apple on 2018/12/24.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ReverseWordsinaStringIII {
    //557反转字符串中的单词3
//    给定一个字符串，你需要反转字符串中每个单词的字符顺序，同时仍保留空格和单词的初始顺序。
//
//    示例 1:
//
//    输入: "Let's take LeetCode contest"
//    输出: "s'teL ekat edoCteeL tsetnoc"
//    注意：在字符串中，每个单词由单个空格分隔，并且字符串中不会有任何额外的空格。
    func reverseWords(_ s: String) -> String {
        
        let arr = s.split(separator: " ")
        var  res = [String]()
        for item in arr {
            //调用了344题中的反转字符串方法
            let ss = ReverseString()
            let sss = ss.reverseString(String(item))
            res.append(sss)
        }
        
        var result = ""
        
        for (index, item) in res.enumerated() {
            if index != res.count - 1 {
                result.append(item + " ")
            } else {
                result.append(item)
            }
        }
        
        
        
        return result
    }
}
