//
//  ViewController.swift
//  hw8.7
//
//  Created by Sviatoslav Binovskyi on 24.12.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    public var allData: [FakeModel] = []

    let parameters: [String: Any] = [
        
        "token" : "vsf_ZAXL9IVb5GnTQWezWQ",
        "data" : ["email": "internetEmail",
                  "gender": "personGender",
                  "id": "personNickname",
                  "user_name": "nameFirst",
                  "avatar": "personAvatar",
                  "_repeat": 10
                 ]
        ]
    
    let url = "https://app.fakejson.com/q"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: Constants.fakeInfoTableViewCell, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: Constants.fakeInfoTableViewCell)
        
        AF.request(url, method: .post, parameters: parameters).responseDecodable(of: [FakeModel].self) { response in
            do {
                self.allData = try response.result.get()
                self.tableView.reloadData()
            } catch {
                print(error)
            }
        }
    }
}



