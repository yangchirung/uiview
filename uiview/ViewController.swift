//
//  ViewController.swift
//  uiview
//
//  Created by MBP_JackYang on 2019/11/16.
//  Copyright © 2019 MBP_JackYang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var newView:UIView!
    var timer:Timer!
    var counter=0.0
    
    @IBOutlet weak var mySeg: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        newView = UIView(frame:CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.center = self.view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
        self.view.addSubview(newView)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (timer) in
            self.rotateView(targetView: self.newView)
        })
    }
    
    
    func rotateView(targetView:UIView){
        
        let angle = counter * M_PI / 180
        targetView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
//        counter += 4;
        if(mySeg.selectedSegmentIndex == 0){
            counter += 4;
        }
        else {
            counter -= 4;
        }
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        print(sender.value)
    }

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
//        print(sender.selectedSegmentIndex)
    }
}

