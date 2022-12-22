//
//  InstagramTableViewCell.swift
//  hw 7.4 @svtbn
//
//  Created by Sviatoslav Binovskyi on 16.12.2022.
//

import UIKit

class InstagramTableViewCell: UITableViewCell {

    @IBOutlet weak var avatarUIImageView: UIImageView!
    @IBOutlet weak var postUIImageView: UIImageView!
    @IBOutlet weak var viewsLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var viewCommentsLabel: UILabel!
    @IBOutlet weak var postedAd: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with post: Post) {
        avatarUIImageView.image = UIImage(named: post.avatarImageName)
        postUIImageView.image = UIImage(named: post.postImageName)
        viewsLabel.text = "\(post.viewsCount) views"
        usernameLabel.text = post.username
        let boldText = (post.username) + " "
                let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 17)]
                let atributedString = NSMutableAttributedString(string: boldText, attributes: attrs)
                let normalText = post.description
                let normalString = NSMutableAttributedString(string: normalText)
                atributedString.append(normalString)
                self.commentLabel.attributedText = atributedString
        viewCommentsLabel.text = "View all \(post.countOfComments) comments"
        postedAd.text = post.postedAt
    }
}
