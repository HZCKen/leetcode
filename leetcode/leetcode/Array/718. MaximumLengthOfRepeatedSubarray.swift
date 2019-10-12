//
//  718. MaximumLengthOfRepeatedSubarray.swift
//  leetcode
//
//  Created by Ken_cheng on 2019/10/12.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

class MaximumLengthOfRepeatedSubarray {

    func findLength(_ A: [Int], _ B: [Int]) -> Int {

        var res = 0
        var dp = [[Int]](repeating: [Int](repeating: 0, count: (B.count + 1)), count: (A.count + 1))
        print(dp)
        for i in 1..<(A.count + 1) {
            for j in 1..<(B.count + 1) {
                print("\(i) \(A[i - 1]) \(j) \(B[j - 1])")
                if A[i - 1] == B[j - 1] {
                    dp[i][j] = dp[i - 1][j - 1] + 1
//                    print(dp)
                    print("i\(i) j \(j) dp\(dp[i][j])")
                    if dp[i][j] > res {
                        res = dp[i][j]
                    }
                }
            }
        }
        print(dp)

        return res
    }

    // 超时
//    func findLength(_ A: [Int], _ B: [Int]) -> Int {
//        var subCount = [Int]()
//        for i in 0..<A.count {
//
//            for j in 0..<B.count {
//
//                if A[i] == B[j] {
//                    var left_a = i + 1
//                    let right_a = A.count - 1
//
//                    var left_b = j + 1
//                    let right_b = B.count - 1
//                    var sameCount = 1
//                    while left_a <= right_a && left_b <= right_b {
//
//                        if A[left_a] == B[left_b] {
//                            sameCount += 1
//                        } else {
//                            break
//                        }
//                        left_a += 1
//                        left_b += 1
//                    }
//                    subCount.append(sameCount)
//                }
//            }
//        }
//
//        if subCount.count <= 0 {
//            return 0
//        }
//
//        var max = subCount[0]
//
//        for i in 1..<subCount.count {
//            if max < subCount[i] {
//                max = subCount[i]
//            }
//        }
//
//        return max
//    }
}
