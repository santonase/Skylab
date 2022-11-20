//
//  task One.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 18.11.2022.
//

import Foundation

protocol Movable {
    func run()
}

protocol Fightable {
    func fight()
}

protocol Hero: Movable, Fightable {
    var name: String { get }
}


struct Farmer: Movable {
    func run() {
        print("Farmer: move")
    }
}

struct Cleaner: Movable {
    func run() {
        print("Cleaner: move")
    }
}

struct Butcher: Fightable {
    func fight() {
        print("Butcher: fight")
    }
}

struct Driver: Fightable {
    func fight() {
        print("Driver: fight")
    }
}

struct Runner: Hero {
    var name: String
    
    func run() {
        print("Runner: run")
    }
    
    func fight() {
        print("Runner: fight")
    }
}

struct Postman: Hero {
    var name: String
    
    func run() {
        print("Postman: run")
    }
    
    func fight() {
        print("Postman: fight")
    }
}

class Tavern {
    var fighters: [Fightable]
    var movers: [Movable]
    
    init(fighters:[Fightable], movers:[Movable]) {
        self.fighters = fighters
        self.movers = movers
    }
    
    func enterTavern(hero: Hero) {
        hero.fight()
        
        for mover in movers {
            mover.run()
        }
        
        for fighter in fighters {
            fighter.fight()
        }
    }
}


var farmer = Farmer()
var cleaner = Cleaner()
var butcher = Butcher()
var driver = Driver()
var runner = Runner(name: "Runner")
var postman = Postman(name: "Postman")

var tavern = Tavern(fighters: [butcher, driver], movers: [farmer, cleaner])

func taskOne() {
    tavern.enterTavern(hero: runner)
}

