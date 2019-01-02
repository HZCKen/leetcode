//
//  17. LetterCombinationsOfAPhoneNumber.swift
//  leetcode
//
//  Created by Apple on 2018/12/29.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class LetterCombinationsOfAPhoneNumber {
//    17. 电话号码的字母组合
//    给定一个仅包含数字 2-9 的字符串，返回所有它能表示的字母组合。
//
//    给出数字到字母的映射如下（与电话按键相同）。注意 1 不对应任何字母。
//
//
//
//    示例:
//
//    输入："23"
//    输出：["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
//    说明:
//    尽管上面的答案是按字典序排列的，但是你可以任意选择答案输出的顺序。
    func letterCombinations(_ digits: String) -> [String] {
        
        if digits.isEmpty {
            return [String]()
        }
        
        let dic:[Character:[String]] = [
            "0":[" "],
            "1":["*"],
            "2":["a", "b", "c"],
            "3":["d", "e", "f"],
            "4":["g", "h", "i"],
            "5":["j", "k", "l"],
            "6":["m", "n", "o"],
            "7":["p", "q", "r", "s"],
            "8":["t", "u", "v"],
            "9":["w", "x", "y", "z"]
        ]
        
        if digits.count == 1 {
            return dic[Character(digits)]!
        }
        
        var res = [String]()
        let currentC = digits[digits.index(digits.startIndex, offsetBy: 0)]
        let current = dic[currentC]!
        let next = letterCombinations(String(digits.dropFirst()))
        
        for s in current {
            
            for i in 0..<next.count {
                res.append(s + next[i])
                print(res)
            }
        }
        
        
        return res
    }
    
}
