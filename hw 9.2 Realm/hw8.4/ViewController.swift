//
//  ViewController.swift
//  hw8.4
//
//  Created by Sviatoslav Binovskyi on 24.12.2022.
//

import UIKit
import Alamofire
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var dataArray: [Movie] = []
    
    var cacheArray: [AllMoviesRealm] = []
            
    private let realm = try? Realm()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlMovies = "https://api.themoviedb.org/3/movie/popular?api_key=513ec4b0669d007dc347e68ef5dff8fa&language=en-US&page=1"
                
        AF.request(urlMovies).responseDecodable(of: MovieModel.self) { listOfMovie in
            self.dataArray = listOfMovie.value?.results ?? []
            
            for movie in self.dataArray {
                self.saveAllMovie(media: movie)
            }
            self.tableView.reloadData()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        cacheArray = getAllMovies()
        tableView.reloadData()
    }
    
    private func saveMovie(media: Movie?) {
        let movieRealm = MovieRealm()
        movieRealm.title = media?.original_title ?? "Error"

        try? realm?.write {
            realm?.add(movieRealm, update: .all)
        }
    }
    
    private func saveAllMovie(media: Movie?) {
        let movieRealm = AllMoviesRealm()
        movieRealm.title = media?.original_title ?? "Error"

        try? realm?.write {
            realm?.add(movieRealm, update: .all)
        }
    }
    
    private func getAllMovies() -> [AllMoviesRealm] {
        guard let result = realm?.objects(AllMoviesRealm.self) else { return [] }
        return Array(result)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        self.dataArray.count
        self.cacheArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
//        cell.textLabel?.text = self.dataArray[indexPath.row].original_title
        cell.textLabel?.text = self.cacheArray[indexPath.row].title
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let saveAction = UIContextualAction(style: .normal, title: "Save movie") { [weak self] _, _, completion in
            
            self?.saveMovie(media: self?.dataArray[indexPath.row])
            completion(true)
        }
        saveAction.backgroundColor = .green
        
        return UISwipeActionsConfiguration(actions: [saveAction])
    }
}



