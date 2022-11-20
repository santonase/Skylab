//
//  Structs.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 19.11.2022.
//

import Foundation

struct PassengerPlane: Plane, Move, Fly {
    
    var name: String
    
    var distanceFly: Int
    
    func move() {
        print("\(name) fly up")
    }
    
    func fly() {
        print("\(name) is flying")
    }
}

struct FighterPlane: Plane, Attack, Move, Fly {
    var name: String
    
    var distanceFly: Int
    
    func shot() {
        print("\(name) is shooting")
    }
    
    func move() {
        print("\(name) fly up")
    }
    
    func fly() {
        print("\(name) is flying")
    }
}
