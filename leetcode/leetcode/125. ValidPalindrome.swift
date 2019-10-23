//
//  125. ValidPalindrome.swift
//  leetcode
//
//  Created by Apple on 2019/10/22.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
     
        //超时
        var left = 0
        var right = s.count - 1
        let temp = s.lowercased()
        
        while left <= right {
            
            if left == temp.count {
                return true
            }
            var leftValue = temp[temp.index(temp.startIndex, offsetBy: left)]
            var rightValue = temp[temp.index(temp.startIndex, offsetBy: right)]
            
            while left < right && !isAlphanumeric(c: rightValue) {
                right -= 1
                rightValue = temp[temp.index(temp.startIndex, offsetBy: right)]
            }

            while left < right && !isAlphanumeric(c: leftValue) {
                left += 1
                leftValue = temp[temp.index(temp.startIndex, offsetBy: left)]
            }

            if isAlphanumeric(c: leftValue) && isAlphanumeric(c: rightValue) {
                if leftValue != rightValue {
                    return false
                }
            }
            
            left += 1
            right -= 1
        }

        return true
    }
    
    func isAlphanumeric(c: Character) -> Bool {
        if (("a" <= c && c <= "z") || ("0" <= c && c <= "9")) {
            return true;
        }
        return false;
    }

}
