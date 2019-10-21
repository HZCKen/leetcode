//
//  744. FindSmallestLetterGreaterThanTarget.swift
//  leetcode
//
//  Created by Apple on 2019/10/21.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class FindSmallestLetterGreaterThanTarget {
    
    
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        
        //大于等于最后一个或者小于第一个的情况下，直接返回第一个
        if target > letters.last! || target < letters.first! {
            return letters.first!
        }
        
     
        var left = 0
        var right = letters.count - 1
        
        while left <= right {
            
            let mid = (left + right) / 2
            if letters[mid] <= target {
                left = mid + 1
            } else {
                if letters[mid - 1] <= target {
                    return letters[mid]
                } else {
                    right = mid - 1
                }
            }
        }
        
        return letters[left]
    }
    
//    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
//
//        for letter in letters {
//            if letter > target {
//                return letter
//            }
//        }
//
//        return letters[0]
//    }
}
