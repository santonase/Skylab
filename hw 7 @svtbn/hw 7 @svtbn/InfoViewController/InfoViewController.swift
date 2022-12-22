//
//  infoViewController.swift
//  hw 7 @svtbn
//
//  Created by Sviatoslav Binovskyi on 14.12.2022.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var LabelMonthNumber: UILabel!
    @IBOutlet weak var LabelMonthName: UILabel!
    
    var infoNumber = 0
    var infoName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       getInfo()
    }
}
