//
//  ViewControlleThird.swift
//  hw 6 @svtbn
//
//  Created by Sviatoslav Binovskyi on 06.12.2022.
//

import UIKit
import Lottie

class ViewControlleThird: UIViewController {
    
    @IBOutlet weak var animationCatFirst: LottieAnimationView!
    @IBOutlet weak var animationCatSecond: LottieAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animationMove(_ sender: Any) {
        animationCatFirst.loopMode = .repeat(10)
        animationCatFirst.animationSpeed = 2
        animationCatFirst.play()
        
        animationCatSecond.loopMode = .autoReverse
        animationCatSecond.animationSpeed = 3
        animationCatSecond.play()
    }
    

}
