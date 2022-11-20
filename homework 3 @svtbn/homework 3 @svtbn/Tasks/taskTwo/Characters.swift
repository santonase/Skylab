//
//  task Two.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 18.11.2022.
//

import Foundation

var passengerPlane = PassengerPlane(name: Constants().namePassengerPlane ?? "", distanceFly: Constants().distancePassengerPlane ?? 0)

var fighterPlane = FighterPlane(name: Constants().nameFighterPlane ?? "", distanceFly: Constants().distanceFighterPlane ?? 0)


func taskTwo() {
    passengerPlane.move()
    passengerPlane.fly()
    
    fighterPlane.move()
    fighterPlane.fly()
    fighterPlane.shot()
}
