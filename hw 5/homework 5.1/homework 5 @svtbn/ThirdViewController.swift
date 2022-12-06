//
//  ThirdViewController.swift
//  homework 5 @svtbn
//
//  Created by Sviatoslav Binovskyi on 01.12.2022.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var redView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView = UIView(frame: CGRect(x: 170, y: 200, width: 240, height: 240))
        redView.backgroundColor = .red
        redView.layer.cornerRadius = redView.frame.width / 2
        view.addSubview(redView)
        
        greenView = UIView(frame: CGRect(x: 0, y: 500, width: 240, height: 240))
        greenView.backgroundColor = .green
        greenView.layer.cornerRadius = greenView.frame.width / 2
        view.addSubview(greenView)
        
        yellowView = UIView(frame: CGRect(x: 80, y: 350, width: 240, height: 240))
        yellowView.backgroundColor = .yellow
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        yellowView.alpha = 0.5
        view.addSubview(yellowView)
    }
}
