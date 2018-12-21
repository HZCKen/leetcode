//
//  796. RotateString.swift
//  leetcode
//
//  Created by Apple on 2018/12/21.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation


//旋转字符串
//给定两个字符串, A 和 B。
//
//A 的旋转操作就是将 A 最左边的字符移动到最右边。 例如, 若 A = 'abcde'，在移动一次之后结果就是'bcdea' 。如果在若干次旋转操作之后，A 能变成B，那么返回True。

//示例 1:
//输入: A = 'abcde', B = 'cdeab'
//输出: true
//
//示例 2:
//输入: A = 'abcde', B = 'abced'
//输出: false

func rotateString(_ A: String, _ B: String) -> Bool {

    if A == B {
        return true
    }
    
    if A.count != B.count {
        return false
    }
    //让字符串拼接，如果可以反转即会包含另一个字符串
    let temp = B + B
    return temp.contains(A)
}
