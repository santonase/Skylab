//
//  BaseUI.swift
//  hw 6 @svtbn
//
//  Created by Sviatoslav Binovskyi on 09.12.2022.
//

import UIKit

class BaseUI: UIView {

    private var view: UIView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    func commonInit() {
        view = loadNib()
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        view.topAnchor.constraint(equalTo: topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }

    func loadNib() -> UIView {
        let bundle = Bundle(for: type(of: self))

        guard let nibName = type(of: self).description().components(separatedBy: ".").last else {
            fatalError("NibName Not Found!")
        }

        let nib = UINib(nibName: nibName, bundle: bundle)

        guard let nibView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            fatalError("First View Not Found!")
        }

        return nibView
    }
}
