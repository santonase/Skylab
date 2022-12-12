//
//  MenuBlock.swift
//  hw 6 @svtbn
//
//  Created by Sviatoslav Binovskyi on 11.12.2022.
//

import Foundation
import UIKit

protocol MenuBlockDelegate {
    func menuElementPressed(_ sender: MenuBlock)
}

class MenuBlock: BaseUI, MenuBlockDelegate {
    
    func menuElementPressed(_ sender: MenuBlock) {
    }
    
    @IBOutlet weak var imageMenuBlock: UIImageView!
    @IBOutlet weak var labelMenuBlock: UILabel!
    
    var delegate: MenuBlockDelegate?
    
    @IBAction func buttonElementPressed(_ sender: Any) {
        delegate?.menuElementPressed(self)
    }
    
    func configure(with text: String, image: UIImage) {
        labelMenuBlock.text = text
        imageMenuBlock.image = image
    }
}


