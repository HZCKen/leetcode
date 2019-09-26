//
//  342. PowerOfFour.swift
//  leetcode
//
//  Created by Apple on 2019/9/26.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class PowerOfFour {
    func isPowerOfFour(_ num: Int) -> Bool {
        var m = 1
        while m < num {
            m *= 4
        }
        return m == num
    }
}
