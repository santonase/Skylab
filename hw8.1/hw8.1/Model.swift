//
//  Model.swift
//  hw8.1
//
//  Created by Sviatoslav Binovskyi on 26.12.2022.
//

import Foundation

struct AllData: Codable {
    var list: String?
    var company: Company?
}

struct Company: Codable {
    var count: Int?
    var companyDescription: String?
    var listOfData: [Device]?
 }

struct Device: Codable {
    var name: String?
    var modelNumber: String?
    var countries: [String]?
    var price: PriceInfo?
    var year: Int?
}


struct PriceInfo: Codable {
    var regions: [RegionPrice]?
}


struct RegionPrice: Codable {
    var name: String?
    var price: Int?
}
