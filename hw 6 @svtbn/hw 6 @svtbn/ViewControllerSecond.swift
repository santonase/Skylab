//
//  ViewControllerSecond.swift
//  hw 6 @svtbn
//
//  Created by Sviatoslav Binovskyi on 06.12.2022.
//

import UIKit

class ViewControllerSecond: UIViewController {

    @IBOutlet weak var ball: UIView!
    @IBOutlet weak var leadingConstrant: NSLayoutConstraint!
    @IBOutlet weak var topConstrant: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball.layer.cornerRadius = ball.frame.width / 2
    }
    
    @IBAction func buttonRun(_ sender: Any) {
        let safeArea = view.safeAreaLayoutGuide
        let height = safeArea.layoutFrame.height
        let width = safeArea.layoutFrame.width
        
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: []) {
            self.leadingConstrant.constant = width - 50
            self.view.layoutIfNeeded()
            
        } completion: { completed in
            
            UIView.animate(withDuration: 1,
                           delay: 0,
                           options: []) {
                self.topConstrant.constant = height - 50
                self.view.layoutIfNeeded()
                
            } completion: { completed in
                
                UIView.animate(withDuration: 1,
                               delay: 0, options: []) {
                    self.leadingConstrant.constant = 0
                    self.view.layoutIfNeeded()
                    
                } completion: { completed in
                    
                    UIView.animate(withDuration: 1,
                                   delay: 0,
                                   options: []) {
                        self.ball.alpha = 0
                        self.topConstrant.constant = 0
                        self.view.layoutIfNeeded()
                    }
                }
            }
        }
    }
}
