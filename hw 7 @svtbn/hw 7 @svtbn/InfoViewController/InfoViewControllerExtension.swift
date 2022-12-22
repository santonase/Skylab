//
//  InfoViewControllerExtension.swift
//  hw 7 @svtbn
//
//  Created by Sviatoslav Binovskyi on 14.12.2022.
//

import Foundation

extension InfoViewController {
    func getInfo() {
        LabelMonthNumber.text = String(infoNumber + 1)
        LabelMonthName.text = infoName
    }
}
