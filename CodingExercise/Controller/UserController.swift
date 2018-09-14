//
//  UserController.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation

class UserController {
    
    
    func requestAllUsers( onSuccess: @escaping ([User]) -> Void , onFailure: @escaping (String) -> Void) {
        
        let network = ApiManager()
        network.networkGetJson(url: URL(string: Configuration.getApiUrlUsers())!,
        onSuccess: { (user) -> () in
                                
            //save data
            self.clearDataSource()
            self.saveUsers(listUser: user)
            onSuccess(user)
        },onFailure: { (err) -> () in
            
            print("Error ", err)
            onFailure(err.localizedDescription)
        })
    }
    
    
    func saveUsers(listUser: [User]) {
        
        let dataSource = UsersRealmDataSource()
        for singleUser in listUser{
            
            dataSource.insert(item: singleUser)
        }
    }
    
    
    func clearDataSource() {
        
        let dataSource = UsersRealmDataSource()
        dataSource.clean()
    }
}
