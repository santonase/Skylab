//
//  getData.swift
//  hw8.1
//
//  Created by Sviatoslav Binovskyi on 24.12.2022.
//

import Foundation

extension ViewController {
    
    func getData() -> Data? {
        guard let url = Bundle.main.url(forResource: "RawData",
                                        withExtension: "json") else {
            return nil
        }
        do {
            let data = try! Data(contentsOf: url)
            return data
        }
    }
}
