//
//  ViewController.swift
//  hw8.1
//
//  Created by Sviatoslav Binovskyi on 24.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let data = self.getData() else { return }
    
        do {
            let decoder = JSONDecoder()
            let myData = try? decoder.decode(AllData.self, from: data)
    
            print("\(String(describing: myData?.company?.companyDescription ?? ""))")
                        print("\(String(describing: myData?.company?.listOfData?.first?.modelNumber ?? ""))")
                        print("\(String(describing: myData?.company?.listOfData?.first?.countries?.last ?? ""))")
                        print("\(String(describing: myData?.company?.listOfData?.last?.price?.regions?.first?.name ?? ""))")
                        print("\(String(describing: myData?.company?.listOfData?.last?.price?.regions?.last?.price ?? 0))")
        } catch {
            print(error)
        }
    }
}
