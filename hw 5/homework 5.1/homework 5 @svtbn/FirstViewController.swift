//
//  FirstViewController.swift
//  homework 5 @svtbn
//
//  Created by Sviatoslav Binovskyi on 01.12.2022.
//

import UIKit

class FirstViewController: UIViewController {
    
    var circle = UIView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circle = UIView(frame: CGRect(x: 70, y: 250, width: 240, height: 240))
        circle.backgroundColor = .green
        circle.layer.cornerRadius = circle.frame.width / 2
        view.addSubview(circle)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
