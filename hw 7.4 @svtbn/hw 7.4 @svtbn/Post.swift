//
//  Post.swift
//  hw 7.4 @svtbn
//
//  Created by Sviatoslav Binovskyi on 16.12.2022.
//

struct Post {
    
    var avatarImageName: String
    var postImageName: String
    var viewsCount: Int
    var description: String
    var countOfComments: Int
    var postedAt: String
    var username: String
}

var arrayPost: [Post] = [Post(avatarImageName: "avatar1", postImageName: "post1", viewsCount: 111, description: "comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment comment ", countOfComments: 39, postedAt: "3 minutes ago", username: "UsernameFirst"),
                         Post(avatarImageName: "avatar2", postImageName: "post2", viewsCount: 222, description: "comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 comment2 ", countOfComments: 48, postedAt: "7 minutes ago", username: "UsernameSecond"),
                         Post(avatarImageName: "avatar3", postImageName: "post3", viewsCount: 333, description: "comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 comment3 ", countOfComments: 57, postedAt: "11 minutes ago", username: "UsernameThird")
]


