//
//  ViewController.swift
//  SlideMenu
//
//  Created by Dan on 5/9/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ubeView: UIView!
    
    @IBOutlet weak var leadingC: NSLayoutConstraint!
    
    @IBOutlet weak var traillingC: NSLayoutConstraint!
    
    var hamburgerMenuIsVisible = false
    @IBAction func hamburgerButtonTapped(_ sender: Any) {
        if !hamburgerMenuIsVisible {
                leadingC.constant = 150
                traillingC.constant = -150
                hamburgerMenuIsVisible = true
            } else {
                leadingC.constant = 0
                traillingC.constant = 0
                
                hamburgerMenuIsVisible = false
            }
            UIView.animate(withDuration: 0.2, delay: 0.0, options: .curveEaseIn, animations: {
                self.view.layoutIfNeeded()
            }) { (animationComplete) in
                print("The animation is complete")
                
            }
        }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}



