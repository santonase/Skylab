//
//  ViewControllerFourth.swift
//  hw 6 @svtbn
//
//  Created by Sviatoslav Binovskyi on 11.12.2022.
//

import Foundation
import UIKit

class ViewControllerFourth: UIViewController, MenuBlockDelegate {
        
    @IBOutlet weak var topMenuBlock: MenuBlock!
    @IBOutlet weak var leftMenuBlock: MenuBlock!
    @IBOutlet weak var rightMenuBlock: MenuBlock!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topMenuBlock.configure(with: "Розстрочка на карту", image: UIImage(named: "installmentMonobank")!)
        topMenuBlock.imageMenuBlock.backgroundColor = .green
        
        leftMenuBlock.configure(with: "Оплата частинами", image: UIImage(named: "catMonobank")!)
        leftMenuBlock.imageMenuBlock.backgroundColor = .purple
        
        rightMenuBlock.configure(with: "Архів", image: UIImage(named: "archiveMonobank")!)
        rightMenuBlock.imageMenuBlock.backgroundColor = .gray
        
        topMenuBlock.delegate = self
        leftMenuBlock.delegate = self
        rightMenuBlock.delegate = self
    }
    
    func menuElementPressed(_ sender: MenuBlock) {
        print("Menu Item Pressed")
        switch true {
        case topMenuBlock == sender: print("TopMenuBlock")
        case leftMenuBlock == sender: print("LeftMenuBlock")
        case rightMenuBlock == sender: print("RightMenuBlock")
        default:
            print("default")
        }
    }
}
