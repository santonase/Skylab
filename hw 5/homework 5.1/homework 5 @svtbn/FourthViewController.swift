//
//  FourthViewController.swift
//  homework 5 @svtbn
//
//  Created by Sviatoslav Binovskyi on 01.12.2022.
//

import UIKit

class FourthViewController: UIViewController {
    
    var mainView = UIView()
    var redView = UIView()
    var yellowView = UIView()
    var greenView = UIView()
    var blueView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView = UIView(frame: CGRect(x: 0, y: 250, width: 390, height: 390))
        mainView.backgroundColor = .white
        mainView.layer.cornerRadius = mainView.frame.width / 2
        mainView.clipsToBounds = true
        view.addSubview(mainView)

        redView = UIView(frame: CGRect(x: 0, y: 0, width: 240, height: 240))
        redView.backgroundColor = .red
        redView.layer.cornerRadius = redView.frame.width / 2
        mainView.addSubview(redView)
        
        yellowView = UIView(frame: CGRect(x: 150, y: 0, width: 240, height: 240))
        yellowView.backgroundColor = .yellow
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        mainView.addSubview(yellowView)
        
        greenView = UIView(frame: CGRect(x: 0, y: 150, width: 240, height: 240))
        greenView.backgroundColor = .green
        greenView.layer.cornerRadius = greenView.frame.width / 2
        mainView.addSubview(greenView)
        
        blueView = UIView(frame: CGRect(x: 150, y: 150, width: 240, height: 240))
        blueView.backgroundColor = .blue
        blueView.layer.cornerRadius = blueView.frame.width / 2
        mainView.addSubview(blueView)

    }
}
