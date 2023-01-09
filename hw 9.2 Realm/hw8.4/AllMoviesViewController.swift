//
//  AllMoviesViewController.swift
//  hw8.4
//
//  Created by Sviatoslav Binovskyi on 09.01.2023.
//

import UIKit
import Alamofire

class AllMoviesViewController: UIViewController {
    
    @IBOutlet weak var allMoviesTableView: UITableView!
    
    var allDataArray: [Movie] = []
    var allMoviesDataArray: [Movie] = []
    var currentPage = 1
    var totalPages = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchMovies(page: currentPage)
    }
    
    func fetchMovies(page: Int) {
        let url = "https://api.themoviedb.org/3/search/movie?api_key=513ec4b0669d007dc347e68ef5dff8fa&language=en-US&query=all&page=\(page)&include_adult=false"
        
        AF.request(url).responseDecodable(of: MovieModel.self) { listOfMovies in
            do {
                
                self.allDataArray += listOfMovies.value?.results ?? []
                self.currentPage = listOfMovies.value?.page ?? 1
                self.totalPages = listOfMovies.value?.total_pages ?? 1
                self.allMoviesDataArray = self.allDataArray
                
                self.allMoviesTableView.reloadData()
            } catch {
                print(error)
            }
        }
    }
}
    
    extension AllMoviesViewController: UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            self.allMoviesDataArray.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell()
            cell.textLabel?.text = allMoviesDataArray[indexPath.row].original_title
            return cell
        }
    }

extension AllMoviesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == allMoviesDataArray.count - 1, currentPage < totalPages {
            print("Next Page")
            fetchMovies(page: currentPage + 1)
            allMoviesTableView.reloadData()
        }
    }
}
