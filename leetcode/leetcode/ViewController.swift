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
        let temp = RotateArray()
        var a  = [1,2,3,4,5,6,7]
        temp.rotate(&a, 3)
//         RotateArray().rotate(&[1,2,3,4,5,6,7], 3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

