//
//  ApiManager.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 14/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation
import Alamofire
import AlamofireObjectMapper


class ApiManager: NSObject {
    
    
    func networkGetJson(url: URL, onSuccess: @escaping ([User]) -> Void , onFailure: @escaping (Error) -> Void) {
        
        Alamofire.request(url).validate().responseArray(keyPath: "users") { (response: DataResponse<[User]>) in
            
            switch response.result {
            case .success:
                let result = response.result.value ?? []
                DispatchQueue.main.async {
                    onSuccess(result)
                }
            case .failure(let error):
                DispatchQueue.main.async {
                    onFailure(error)
                }
            }
        }
    }

}
