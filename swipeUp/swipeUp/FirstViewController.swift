//
//  FirstViewController.swift
//  swipeUp
//
//  Created by Sagar Das on 04/04/23.
//

import UIKit



class FirstViewController: UIViewController {

    
    @IBOutlet weak var headerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
//        view.addGestureRecognizer(panGesture)
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(_:)))
        view.addGestureRecognizer(panGesture)
       
    }
    
//    @objc func handlePan(_ sender: UIPanGestureRecognizer) {
//        let translation = sender.translation(in: view.superview)
//        switch sender.state {
//        case .changed:
//            view.transform = CGAffineTransform(translationX: 0, y: translation.y)
//        case .ended:
//            if translation.y > 0 {
//                animateSwipeDown()
//            } else {
//                animateSwipeUp()
//            }
//        default:
//            break
//        }
//    }
//
//    func animateSwipeDown() {
//        UIView.animate(withDuration: 0.3) {
//            self.view.transform = CGAffineTransform(translationX: 0, y: self.view.frame.height)
//        }
//    }
//
//    func animateSwipeUp() {
//        UIView.animate(withDuration: 0.3) {
//            self.view.transform = .identity
//        }
//    }
    
    @objc func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view.superview)
        switch sender.state {
        case .changed:
            view.transform = CGAffineTransform(translationX: 0, y: max(0, translation.y - view.frame.height))
        case .ended:
            if translation.y > view.frame.height / 2 {
                animateSwipeUp()
            } else {
                animateSwipeDown()
            }
        default:
            break
        }
    }

    func animateSwipeDown() {
        UIView.animate(withDuration: 0.3) {
            self.view.transform = .identity
        }
    }

    func animateSwipeUp() {
        UIView.animate(withDuration: 0.3) {
            self.view.transform = CGAffineTransform(translationX: 0, y: -self.view.frame.height)
        }
    }



}
