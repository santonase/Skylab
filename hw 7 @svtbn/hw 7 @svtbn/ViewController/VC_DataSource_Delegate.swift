//
//  ViewControllerExtension.swift
//  hw 7 @svtbn
//
//  Created by Sviatoslav Binovskyi on 14.12.2022.
//

import Foundation
import UIKit

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
}


extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let monthName = array[indexPath.row]
        let main = UIStoryboard(name: main, bundle: nil)
        if let Controller = main.instantiateViewController(withIdentifier: infoViewController) as? InfoViewController {
            Controller.infoName = monthName
            Controller.infoNumber = indexPath.row
            
            navigationController?.pushViewController(Controller, animated: true)
        }
    }
}
