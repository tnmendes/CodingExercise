//
//  UsersRealmDataSource.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation
import RealmSwift

class UsersRealmDataSource: DataSource {
    
    private let realm = try! Realm()
    
    
    func getAll() -> [User] {
        return realm.objects(RealmUser.self).map { $0.entity }
    }
    
    func getById(id: String) -> User {
        
        let user = realm.objects(RealmUser.self).filter("name == %@", id).first
        return (user?.entity)!
    }
    
    func insert(item: User) {
        try! realm.write {
            
            realm.add(RealmUser(user: item))
        }
    }
    
    func clean() {
        try! realm.write {
            realm.delete(realm.objects(RealmUser.self))
        }
    }
    
    
    func update(item: User) {
        
    }
    
    func deleteById(id: String) {
        /*let object = getById(id: id)
        try! realm.write {
            realm.delete(object)
        }*/
    }
}
