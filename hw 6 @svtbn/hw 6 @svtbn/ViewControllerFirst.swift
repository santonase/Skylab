//
//  ViewController.swift
//  hw 6 @svtbn
//
//  Created by Sviatoslav Binovskyi on 06.12.2022.
//

import UIKit

class ViewControllerFirst: UIViewController {
    
    @IBOutlet weak var ball: UIView!
    @IBOutlet weak var ConstrantBottom: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ball.layer.cornerRadius = ball.frame.width / 2
    }
 
    @IBAction func buttonPressed(_ sender: Any) {
        
        UIView.animate(withDuration: 0.7,
                       delay: 0,
        usingSpringWithDamping: 4,
        initialSpringVelocity: 5,
                       options: [.autoreverse, .repeat]) {
            
            self.ConstrantBottom.constant = -300
            self.view.layoutIfNeeded()
        }
    }
}
