//
//  387. FirstUniqueCharacterInAString.swift
//  leetcode
//
//  Created by Apple on 2019/10/23.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class FirstUniqueCharacterInAString {
    
    func firstUniqChar(_ s: String) -> Int {
     
//        思路就是把每一个字符都放到桶里
//        这样统计了词频
//        然后再遍历一遍源字符串，找到第一个词频为1的字符， 返回下标
        
        var result = Array(repeating: 0, count: 26)
        
        for c in s.unicodeScalars {
            result[Int(c.value - 97)] += 1
        }
        var index = 0
        for c in s.unicodeScalars {
            if result[Int(c.value - 97)] == 1 {
                return index
            } else {
                index += 1
            }
        }
        
        return -1
    }
    
//    func firstUniqChar(_ s: String) -> Int {
//
//        var dict = [Character : Int]()
//        var result = [Character]()
//
//        for (index, c) in s.enumerated() {
//            if dict[c] == nil {
//                result.append(c)
//                dict[c] = index
//            } else {
//                result.removeAll(){
//                    $0 == c
//                }
//            }
//        }
//
//        if !result.isEmpty {
//            return dict[result[0]]!
//        }
//
//        return -1
//    }
}
