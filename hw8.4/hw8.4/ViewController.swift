//
//  ViewController.swift
//  hw8.4
//
//  Created by Sviatoslav Binovskyi on 24.12.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlMovies = "https://api.themoviedb.org/3/movie/popular?api_key=513ec4b0669d007dc347e68ef5dff8fa&language=en-US&page=1"
        
        let urlGenres = "https://api.themoviedb.org/3/genre/movie/list?api_key=513ec4b0669d007dc347e68ef5dff8fa&language=en-US"
        
        AF.request(urlMovies).responseDecodable(of: MovieModel.self) { listOfMovie in
            print(listOfMovie.value?.results ?? "error")
        }
        
        AF.request(urlGenres).responseDecodable(of: GenresModel.self) { listOfGenres in
            print(listOfGenres.value?.genres?.first?.name ?? "error")
        }
    }

    
}

