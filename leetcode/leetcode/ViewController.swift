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

        let lett = MaskingPersonalInformation()
        lett.maskPII("1(234)567-890")
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

