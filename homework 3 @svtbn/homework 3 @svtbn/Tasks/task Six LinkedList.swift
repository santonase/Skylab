//
//  task Six LinkedList.swift
//  homework 3 @svtbn
//
//  Created by Sviatoslav Binovskyi on 19.11.2022.
//

import Foundation

class Node<T> {

    var value: T
    var next: Node<T>?

    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

struct LinkedList<T> {
 
  var head: Node<T>?
  var tail: Node<T>?
  
  var isEmpty: Bool { head == nil }
    
    mutating func append(_ value: T) {
        let node = Node(value: value)

        tail?.next = node
        tail = node
      }
    
    mutating func push(_ value: T) {
          head = Node(value: value, next: head)

          if tail == nil {
              tail = head
          }
      }
    
    func node(at index: Int) -> Node<T>? {
          var currentIndex = 0
          var currentNode = head

          while currentNode != nil && currentIndex < index {
              currentNode = currentNode?.next
              currentIndex += 1
          }

          return currentNode
      }
    
    func insert(_ value: T, after index: Int) {
        guard let node = node(at: index) else { return }
        
        node.next = Node(value: value, next: node.next)
      }
    
    mutating func pop() -> T? {
        defer {
          head = head?.next
          
          if isEmpty {
            tail = nil
          }
        }
        
        return head?.value
      }
    
    mutating func remove(after index: Int) -> T? {
        guard let node = node(at: index) else { return nil }
        
        defer {
          if node.next === tail {
            tail = node
          }
          
          node.next = node.next?.next
        }
        
        return node.next?.value
      }
    
    public var print: String {
        var stringArray = "["
        guard var node = head else { return stringArray + "]" }
        while let next = node.next {
            stringArray += "\(node.value), "
            node = next
            
        }
        stringArray += "\(node.value)"
        return stringArray + "]"
        
    }
    
  init() {}
}

var list = LinkedList<Int>()


func taskSixLinkedList() {
    list.push(5)
    list.push(4)
    list.push(3)
    list.push(2)
    list.push(1)

    print(list.print)

    list.append(7)
    list.append(8)
    list.append(9)

    print(list.print)

    list.insert(6, after: 4)

    print(list.print)

    list.pop()

    print(list.print)

    list.remove(after: 5)

    print(list.print)
    
    list.remove(after: 5)
    
    print(list.print)

}
