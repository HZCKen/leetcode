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
       
        let sss = XOfAKindInADeckOfCards().hasGroupsSizeX([1, 2, 1, 2])
        print(sss)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

