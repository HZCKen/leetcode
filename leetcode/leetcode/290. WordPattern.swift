//
//  290. WordPattern.swift
//  leetcode
//
//  Created by Apple on 2019/9/6.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//给定一种规律 pattern 和一个字符串 str ，判断 str 是否遵循相同的规律。
//
//这里的 遵循 指完全匹配，例如， pattern 里的每个字母和字符串 str 中的每个非空单词之间存在着双向连接的对应规律。
//
//示例1:
//
//输入: pattern = "abba", str = "dog cat cat dog"
//输出: true
//示例 2:
//
//输入:pattern = "abba", str = "dog cat cat fish"
//输出: false
//示例 3:
//
//输入: pattern = "aaaa", str = "dog cat cat dog"
//输出: false
//示例 4:
//
//输入: pattern = "abba", str = "dog dog dog dog"
//输出: false
//说明:
//你可以假设 pattern 只包含小写字母， str 包含了由单个空格分隔的小写字母。
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/word-pattern
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。

class WordPattern {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        
        let arr = str.split(separator: " ")
        
        if arr.count != pattern.count {
            return false
        }
        
        var patternArr = [Character]()
        
        for c in pattern {
            patternArr.append(c)
        }
        
        var dict_a = [String.SubSequence:Character]() //记录str -> pattern
        var dict_b = [Character:String.SubSequence]() //记录pattern-> str
     
        for i in 0 ..< arr.count {
            if !dict_a.keys.contains(arr[i]) {
                dict_a[arr[i]] = patternArr[i]
            }
            if !dict_b.keys.contains(patternArr[i]) {
                dict_b[patternArr[i]] = arr[i]
            }
        }
        
        print(dict_a) //["cat": "b", "dog": "a"]
        print("=====")
        print(dict_b) //["a": "dog", "b": "cat"]
        
        //生成新的str
        var temp = ""
        for i in 0 ..< patternArr.count {
            let c = patternArr[i]
            if i != patternArr.count - 1 {
                temp.append("\(String(describing: dict_b[c]!)) ")
            } else {
                temp.append(String(describing: dict_b[c]!))
            }
        }
        print(temp)
        
        //生成新的pattern
        var temp2 = ""
        
        for i in 0 ..< arr.count {
            let s = arr[i]
            temp2.append(dict_a[s]!)
        }
        print(temp2)
        
        return temp == str && temp2 == pattern
    }
}
