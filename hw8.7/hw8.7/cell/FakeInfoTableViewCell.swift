//
//  FakeInfoTableViewCell.swift
//  hw8.7
//
//  Created by Sviatoslav Binovskyi on 25.12.2022.
//

import UIKit

class FakeInfoTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pictureUIImageView: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    
    let url = URL(string: "https://picsum.photos/500")
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(with fake: FakeModel) {
        emailLabel.text = fake.email
        genderLabel.text = fake.gender
        idLabel.text = fake.id
        userNameLabel.text = fake.user_name
        pictureUIImageView.load(url: url!)
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.main.async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
