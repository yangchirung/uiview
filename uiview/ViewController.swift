//
//  ViewController.swift
//  uiview
//
//  Created by MBP_JackYang on 2019/11/16.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("test")
    }


    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
        
    }
}

