//
//  User.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation
import ObjectMapper

class User: NSObject, Mappable {
    
    var email: String?
    var name: String?
    var infos: String?
    var expanded: Bool = false
    
    convenience required init?(map: Map) {
        self.init()
    }
    
    override init() {}
    
    init(email: String, name: String, infos: String) {
        self.email = email
        self.name = name
        self.infos = infos
    }
    
    func mapping(map: Map) {
        
        email <- map["email"]
        name <- map["name"]
        infos <- map["infos"]
    }
    
}
