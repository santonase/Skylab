//
//  taskOne.swift
//  homework 4 @svtbn
//
//  Created by Sviatoslav Binovskyi on 22.11.2022.
//

import Foundation

/*1. Практикуємося у використанні enum:
 
 У презентації з теми Enum та в playgrounds файлі були наведені варіанти перерахувань. Ключова ідея Enum – кожен case може стати значенням enum. Якщо значеннями є дні тижня, то enum має називатися “День тижня”
 Спробуйте вигадати два своїх перерахування, кожен з яких повинен відповідати ключовій ідеї, описаній вище

 У першому з вашого enum додайте RawValue. Вкажіть його тільки для частини case та протестуйте, створивши кілька екземплярів цього enum
*/

enum Color {
    case black(String)
    case green(String)
}

let auto = Color.black("Black")
let flower = Color.green("Green")

func whatIsColor(color: Color) -> String {
    switch color {
    case .black(let auto): return "This car is \(auto)"
    case .green(let flower): return "This flower is \(flower)"
    }
}

let colorIs = whatIsColor(color: auto)
let colorIsTwo = whatIsColor(color: flower)

enum Months: Int {
    case January = 1
    case February
    case March = 3
    case April = 4
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
    
    func seasons() {
        switch self {
        case .December, .January, .February: print("Winter")
        case .March, .April, .May: print("Spring")
        case .June, .July, .August: print("Summer")
        case .September, .October, .November: print("Autumn")
        }
    }
}

var month: Months = .August
var november = Months.November
var monthTwo = Months.January.seasons()

var color = Color.black

    
    func taskOne() {
        print(month)
        print(month.rawValue)
        
        print(november)
        print(november.rawValue)
        
        print(colorIs)
        print(colorIsTwo)
        
        print(month.seasons())
        print(monthTwo)
        
    }

