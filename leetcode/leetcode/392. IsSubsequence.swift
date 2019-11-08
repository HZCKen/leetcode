//
//  392. IsSubsequence.swift
//  leetcode
//
//  Created by Apple on 2019/11/1.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class IsSubsequence {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        
        if s.count == 0 {
            return false
        }
        
        var a = 0
       let temp =  Array(s)
        for c in t {
            
            if c == temp[a] {
                a += 1
            }
            if a == s.count {
                return true
            }
        }
        
        
        return false
        
    }
}

