//
//  ViewController.swift
//  leetcode
//
//  Created by Apple on 2018/12/21.
//  Copyright © 2018年 AiChen smart Windows and doors technology co., LTD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        let lett = MinCostClimbingStairs()
//        lett.minCostClimbingStairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1])
       
//        let sss = XOfAKindInADeckOfCards().hasGroupsSizeX([1, 2, 1, 2])
//        print(sss)
//        let result = ClimbingStairs().climbStairs(44)
////        let result = ContainsDuplicate().containsDuplicate([1, 2, 3, 1])
//        print(result)
        
//        let minStack = MinStack()
//        minStack.push(2)
//        minStack.push(0)
//        minStack.push(3)
//        var min = minStack.getMin()
//        print(min)
//        minStack.pop()
//        min = minStack.getMin()
//        print(min)
//        minStack.pop()
//        min = minStack.getMin()
//        print(min)
//        minStack.pop()
//        min = minStack.getMin()
//        print(min)
        
//        let temp = [3,1,4,2]
//        [1,2,3,2,1]
//        [3,2,1,4,7]
//
//        let result = MaximumNestingDepthOfTwoValidParenthesesStrings().maxDepthAfterSplit("()()")
//
//        print(result)
//         ["TimeMap","set","get","get","set","get","get"], inputs = [[],["foo","bar",1],["foo",1],["foo",3],["foo","bar2",4],["foo",4],["foo",5]]
//        [[],["love","high",10],["love","low",20],["love",5],["love",10],["love",15],["love",20],["love",25]]


        let timeMap = TimeMap()
        timeMap.set("love", "high", 10)
        timeMap.set("love", "low", 20)
        let result = timeMap.get("love", 15)
        print(result)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

