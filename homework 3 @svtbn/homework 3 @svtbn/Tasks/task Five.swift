//
//  task Five.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 18.11.2022.
//

import Foundation

func twoVariablesSwap<T>(first: T, second: T) {
    var a = first
    var b = second
    (a, b) = (b, a)
    print("first: \(a), second: \(b)")
}

func twoVariablesTuple<T, D>(first: T, second: D) -> (T, D) {
    let result = (first, second)
    print(result)
    return result
}

func twoVariablesSum<T: Numeric>(val1: T, val2: T) -> T {
    print(val1 + val2)
    return val1 + val2
}

struct Dictionary<T: Hashable, D> {
    var dict: [T: D] = [:]
    
    mutating func addElement(key: T, value: D) {
        dict[key] = value
    }
    
    func getElement(key: T) -> D? {
        dict[key]
    }
}

var dict = Dictionary<String, Int>()

func taskFive() {
    twoVariablesSwap(first: 1, second: 2)
    twoVariablesTuple(first: "MacBook Air", second: 16)
    twoVariablesSum(val1: 1, val2: 2)
    
    dict.addElement(key: "iPhone_10", value: 10_000)
    dict.addElement(key: "iPhone_11", value: 11_000)
    dict.addElement(key: "iPhone_12", value: 12_000)
    dict.addElement(key: "iPhone_13", value: 13_000)
    dict.addElement(key: "iPhone_14", value: 14_000)
    
    print(dict)
    print(dict.getElement(key: "iPhone_12") ?? 0)
}

