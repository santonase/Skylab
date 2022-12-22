//
//  ViewController.swift
//  hw 7 @svtbn
//
//  Created by Sviatoslav Binovskyi on 14.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ListOfCitiesTableView: UITableView!
    
    var array: [String] = ["Dnipro", "Kyiv", "Kharkiv", "Zaporizhzhia", "Odesa", "Rivne", "Ivano-Frankivsk", "Yaremche", "Vorohta", "Lviv"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addCityBarButton(_ sender: Any) {
        
        let ac = UIAlertController(title: "Add city", message: "Put your cities name", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add", style: .default) { (action) in
            let text = ac.textFields?.first?.text
            self.array.append(text ?? "")
            self.ListOfCitiesTableView.reloadData()
        }
        
        let calcele = UIAlertAction(title: "Cancele", style: .cancel) { (cancele) in }
        
        ac.addTextField(configurationHandler: nil)
        ac.addAction(action)
        ac.addAction(calcele)
        self.present(ac, animated: true, completion: nil)
    }
}




