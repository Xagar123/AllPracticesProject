//
//  ViewController.swift
//  combine_framework
//
//  Created by Sagar Das on 18/04/23.
//

import UIKit
import Combine

class ViewController: UIViewController {
    
    let number = (1...5).publisher
    let letter = ["A","B","C","D","E"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        number
            .zip(letter)
            .map("\($0) \($1)")
            .sink(print($0))
    }


}

