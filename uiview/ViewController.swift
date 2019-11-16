//
//  ViewController.swift
//  uiview
//
//  Created by MBP_JackYang on 2019/11/16.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var theView:UIView!
    var timer:Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        theView = UIView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        theView.center = self.view.center
        theView.backgroundColor = UIColor.red
        theView.transform = CGAffineTransform(rotationAngle: 0)
        self.view.addSubview(theView)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (timer) in
            self.rotateView(targetView: self.theView)
        })
    }
    
    func rotateView(targetView:UIView){
        print("test")
    }


    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
        
        
    }
}

