//
//  CityDelegate.swift
//  hw 7 @svtbn
//
//  Created by Sviatoslav Binovskyi on 15.12.2022.
//

import Foundation

protocol addCityDelegate {
    func addCity(cityName: String)
}

class addCity: addCityDelegate {
    
    func addCity(cityName: String) {
        ViewController().array.append(cityName)
    }
    
    var delegate: addCityDelegate?
    
}
