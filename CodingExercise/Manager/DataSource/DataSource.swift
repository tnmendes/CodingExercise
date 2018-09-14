//
//  DataSource.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation

protocol DataSource {
    associatedtype T
    
    func getAll() -> [T]
    func getById(id: String) -> T
    func insert(item: T)
    func update(item: T)
    func clean()
    func deleteById(id: String)
}
