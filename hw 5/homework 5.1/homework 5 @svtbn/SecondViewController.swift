//
//  SecondViewController.swift
//  homework 5 @svtbn
//
//  Created by Sviatoslav Binovskyi on 01.12.2022.
//

import UIKit

class SecondViewController: UIViewController {
    
    var redView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        redView = UIView(frame: CGRect(x: 75, y: 60, width: 240, height: 240))
        redView.backgroundColor = .red
        redView.layer.cornerRadius = redView.frame.width / 2
        view.addSubview(redView)
        
        yellowView = UIView(frame: CGRect(x: 75, y: 300, width: 240, height: 240))
        yellowView.backgroundColor = .yellow
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        view.addSubview(yellowView)
        
        greenView = UIView(frame: CGRect(x: 75, y: 540, width: 240, height: 240))
        greenView.backgroundColor = .green
        greenView.layer.cornerRadius = greenView.frame.width / 2
        view.addSubview(greenView)
   
    }
}
