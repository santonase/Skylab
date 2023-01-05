//
//  Model.swift
//  ShoppingList
//
//  Created by Sviatoslav Binovskyi on 29.12.2022.
//

import Foundation

var shoppingItems: [[String: Any]] {
    set {
        UserDefaults.standard.set(newValue, forKey: "shoppingList")
        UserDefaults.standard.synchronize()
    }
    
    get {
        if let array = UserDefaults.standard.array(forKey: "shoppingList") as? [[String: Any]] {
            return array
        } else {
            return []
        }
    }
}

func addItem(nameItem: String, isCompleted: Bool = false) {
    shoppingItems.append(["Name": nameItem, "isCompleted": isCompleted])
}

func removeItem(at index: Int) {
    shoppingItems.remove(at: index)
}

func changeState(at item: Int) -> Bool {
    shoppingItems[item]["isCompleted"] = !(shoppingItems[item]["isCompleted"] as! Bool)
    
    return shoppingItems[item]["isCompleted"] as! Bool
}

func moveItem(fromIndex: Int, toIndex: Int) {
    let from = shoppingItems[fromIndex]
    shoppingItems.remove(at: fromIndex)
    shoppingItems.insert(from, at: toIndex)
}
