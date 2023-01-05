//
//  FavoritesViewController.swift
//  hw8.4
//
//  Created by Sviatoslav Binovskyi on 05.01.2023.
//

import UIKit
import RealmSwift

class FavoritesViewController: UIViewController {
    
    @IBOutlet weak var FavoritesUITableView: UITableView!
    var savedMoviesArray: [MovieRealm] = []
    private let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        savedMoviesArray = getMovies()
        FavoritesUITableView.reloadData()
    }
    
    private func getMovies() -> [MovieRealm] {
        let result = realm.objects(MovieRealm.self)
        return Array(result)
    }
    
}


extension FavoritesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        savedMoviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = savedMoviesArray[indexPath.row].title
        return cell
    }
}
