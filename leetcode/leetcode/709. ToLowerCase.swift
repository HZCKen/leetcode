//
//  709. ToLowerCase.swift
//  leetcode
//
//  Created by Apple on 2018/12/21.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ToLowerCase {
    
//    709.转换成小写字母
//    实现函数 ToLowerCase()，该函数接收一个字符串参数 str，并将该字符串中的大写字母转换成小写字母，之后返回新的字符串。
    
    func toLowerCase(_ str: String) -> String {
        
        let map:[Character : String] = ["A":"a",
                   "B":"b",
                   "C":"c",
                   "D":"d",
                   "E":"e",
                   "F":"f",
                   "G":"g",
                   "H":"h",
                   "I":"i",
                   "J":"j",
                   "K":"k",
                   "L":"l",
                   "M":"m",
                   "N":"n",
                   "O":"o",
                   "P":"p",
                   "Q":"q",
                   "R":"r",
                   "S":"s",
                   "T":"t",
                   "U":"u",
                   "V":"v",
                   "W":"w",
                   "X":"x",
                   "Y":"y",
                   "Z":"z"
                   ]
        
        let temp = Array(str)
        
        var res = ""
        
        for c in temp {
            if (map[c] != nil) {
                res.append(map[c]!)
            } else {
                res.append(c)
            }
        }
     
        return res
    }
}
