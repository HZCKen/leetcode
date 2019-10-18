//
//  911. OnlineElection.swift
//  leetcode
//
//  Created by Apple on 2019/10/18.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class TopVotedCandidate {

    var winner = [Int:Int]()//记录时间段获胜的编号
    var times = [Int]()
    
    init(_ persons: [Int], _ times: [Int]) {
    
        var dict = [Int:Int]()//记录编号出现的次数
        var tempMax = 0//记录最大值
        var person = 0//最大值的编号
        for i in 0..<persons.count {
            let personNum = persons[i]
            let time = times[i]
            if dict[personNum] == nil {
                dict[personNum] = 1
            } else {
                dict[personNum]! += 1
            }
            
            if dict[personNum]! >= tempMax {
                tempMax = dict[personNum]!
                person = personNum
            }
            winner[time] = person
            
        }
        self.times = times
        
    }
    
    func q(_ t: Int) -> Int {
        var left = 0
        var right = times.count - 1
        
        while left < right {
            let mid = (left + right) / 2
            
            if left == mid {
                if times[right] <= t {
                    left = right
                    break
                } else {
                    break
                }
            }
            
            if times[mid] > t {
                right = mid - 1
            } else if times[mid] <= t {
                left = mid
            }
        }
        return winner[times[left]] ?? 0
        
    }
}
