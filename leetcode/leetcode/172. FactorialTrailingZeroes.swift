//
//  172. FactorialTrailingZeroes.swift
//  leetcode
//
//  Created by Apple on 2019/10/24.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//能产生0的情况只有 5*2=10，其他情况分解后也是这个，2的数目要远多于5，所以问题就转变为求求5的个数
//比如说 25！= 1*2*3*...*24*25
//
//去掉无法产生0的， 5*10*5*20*25
//再分解， 1*5 * 2*5 * 3*5 * 4*5 * 5*5
//那些5的倍数的都能构造出 5*2,而25有两层5
//所以只要 n//5就能得出第一层的5的个数，剩下1 * 2 * 3 * 4 * 5
//上面的结果再除以5就是下一层的5的个数
//最终5+1=6
//
//作者：ljt-4
//链接：https://leetcode-cn.com/problems/factorial-trailing-zeroes/solution/qiu-0ge-shu-cheng-yi-10jiu-you-yi-ge-0-qiu-5de-ge-/
//来源：力扣（LeetCode）
//著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

class FactorialTrailingZeroes {
    func trailingZeroes(_ n: Int) -> Int {
        var result = 0
        var temp = n

        while temp >= 5 {
            temp = temp / 5
            result += temp
        }

        return result
    }
}
