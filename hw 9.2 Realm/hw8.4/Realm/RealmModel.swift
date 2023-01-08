//
//  Realm.swift
//  hw8.4
//
//  Created by Sviatoslav Binovskyi on 04.01.2023.
//

import Foundation
import RealmSwift

class MovieRealm: Object {
    
    @Persisted(primaryKey: true) var title: String
}

class AllMoviesRealm: Object {
    @Persisted(primaryKey: true) var title: String

}
