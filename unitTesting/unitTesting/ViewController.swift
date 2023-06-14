//
//  ViewController.swift
//  unitTesting
//
//  Created by Sagar Das on 25/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    let math = Arithmetic()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("add of 2 and 2 is ",math.add(num1: 2, num2: 2))
//        print("sub of 2 and 2 is ",math.sub(num1: 2, num2: 2))
        print("mul of 2 and 5 is ",math.mul(num1: 2, num2: 5))
//        print("division of 2 and 2 is ",math.division(num1: 2, num2: 2))
        
    }


}

