//
//  Configuration.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation

struct Configuration {
    
    /// URL of the API
    static let apiURL                           = "http://media.tictrac.com/tmp/"
    
    static func getApiUrlUsers() -> String {
        
        return apiURL + "users.json"
    }

}
