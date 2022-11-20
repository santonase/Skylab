//
//  task Six.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 18.11.2022.
//

import Foundation

struct Stack<T> {
    
    var stack: [T] = []
    
    mutating func push(element: T) {
        stack.append(element)
    }
    
    mutating func pop() -> T {
        stack.removeLast()
    }
}

var stack = Stack<Double>()

func taskSixStack() {
    stack.push(element: 0.5)
    stack.push(element: 0.75)
    stack.push(element: 1.0)
    stack.push(element: 1.5)
    
    print(stack)
    stack.pop()
    print(stack)
    stack.pop()
    print(stack)
}
