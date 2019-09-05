//
//  155. MinStack.swift
//  leetcode
//
//  Created by Apple on 2019/9/5.
//  Copyright © 2019 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import Foundation

//最小栈
//设计一个支持 push，pop，top 操作，并能在常数时间内检索到最小元素的栈。
//
//push(x) -- 将元素 x 推入栈中。
//pop() -- 删除栈顶的元素。
//top() -- 获取栈顶元素。
//getMin() -- 检索栈中的最小元素。
//示例:
//
//MinStack minStack = new MinStack();
//minStack.push(-2);
//minStack.push(0);
//minStack.push(-3);
//minStack.getMin();   --> 返回 -3.
//minStack.pop();
//minStack.top();      --> 返回 0.
//minStack.getMin();   --> 返回 -2.
//
//来源：力扣（LeetCode）
//链接：https://leetcode-cn.com/problems/min-stack
//著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。


class MinStack {
    
    private var stacks = [Int]()
    private var help = [Int]()
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {

        stacks.append(x)
        if help.isEmpty || x <= help.last! {
            help.append(x)
        }
    }
    
    func pop() {
        if stacks.isEmpty {
            return
        }
         let last = stacks.removeLast()
        if last == help.last! {
           help.removeLast()
        }
    }
    
    func top() -> Int {
        return stacks.last ?? 0
    }
    
    func getMin() -> Int {
        return help.last!
//        if stacks.isEmpty {
//            return 0
//        }
//        print(stacks)
//        var min = stacks.first!
//
//        var left = 0
//        var right = stacks.count - 1
//
//        while left <= right {
//            let leftElement = stacks[left]
//            let rightElement = stacks[right]
//
//            if min >= leftElement {
//                min = leftElement
//            }
//
//            if min >= rightElement {
//                min = rightElement
//            }
//
//            left += 1
//            right -= 1
//        }
//
////        for element in stacks {
////            if element < min {
////                min = element
////            }
////        }
//
//        return min
    }
}
