//
//  RealmUser.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation
import RealmSwift

class RealmUser: Object {
    
    @objc dynamic var email: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var infos: String = ""
    
    convenience init(user: User) {
        self.init()
        email = user.email!
        name = user.name!
        infos = user.infos!
    }
    
    var entity: User {
        return User(email: email, name: name, infos: infos)
    }
}
