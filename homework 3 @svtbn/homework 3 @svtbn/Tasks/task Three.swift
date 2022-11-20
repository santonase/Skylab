//
//  task Three.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 18.11.2022.
//

import Foundation

var number: Int = 5

extension Int {
    func powerToCycle(degree: Int) {
        var a = 1
        for _ in 1...degree {
            a *= self
        }
        print(a)
    }
}

var sss: String = "asWsa"

extension String {
    func isPalindrom() {
        if self == String(self.reversed()) {
            print("is palindrom?: \(self) - true")
        } else {
            print("is palindrom?: \(self) - false")
        }
    }
}

func taskThreeDegree() {
    number.powerToCycle(degree: 2)
}

func taskThreePalindrom() {
    sss.isPalindrom()
}
