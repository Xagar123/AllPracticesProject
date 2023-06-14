//
//  ViewController.swift
//  swipeUp
//
//  Created by Sagar Das on 04/04/23.
//

import UIKit

class ViewController: UIViewController {

   var childVC:FirstViewController!
    
    let cardHeight:CGFloat = 350
    let cardHandleAreaHeight:CGFloat = 110
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        childVC = FirstViewController(nibName: "FirstViewController", bundle: nil)
        self.addChild(childVC)
        self.view.addSubview(childVC.view)
        
        childVC.view.frame = CGRect(x: 0, y: self.view.frame.height - cardHandleAreaHeight, width: self.view.bounds.width, height: cardHeight)
        childVC.view.clipsToBounds = true
        
        
    }


}

