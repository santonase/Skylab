//
//  Protocols.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 19.11.2022.
//

import Foundation

protocol Attack {
    func shot()
}

protocol Fly {
    func fly()
}

protocol Move {
    func move()
}

protocol Plane {
    var name: String { get set }
    var distanceFly: Int { get set }
}
