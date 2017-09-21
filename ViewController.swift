//
//  ViewController.swift
//  PopUpTest
//
//  Created by Muhammad Bilal on 21/09/2017.
//  Copyright © 2017 Muhammad Bilal. All rights reserved.
//

import UIKit
import Popover

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnShowPopup(_ sender: Any) {
        //let startPoint = CGPoint(x: self.view.frame.width - 60, y: 55)
        //let aView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 180))
        let aView =  UINib(nibName: "MyCustomView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! MyCustomView
        aView.myLabel.text = "Sending Shit";
        
        let popover = Popover(options: nil, showHandler: nil, dismissHandler: nil)
        //popover.show(aView, point: startPoint)
        
        
        popover.showAsDialog(aView)
        
        
    }

}

