//
//  ListAllUsersTableViewController.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 13/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation
import UIKit

class ListAllUsersTableViewController: UIViewController {
    
    let userCellReuseIdentifier = "userCellReuseIdentifier"
    var userList: [User] = []
    let tableview = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Users"
        configureTableView()
        
        let user = UserController()
        user.requestAllUsers(onSuccess: { (user) -> () in
            
            self.userList = user
            self.tableview.reloadData()
        },onFailure: { (err) -> () in
            
            //alert
        })
    }
    
    func configureTableView() {
        tableview.dataSource = self
        tableview.delegate = self
        tableview.estimatedRowHeight = 100
        tableview.rowHeight = UITableViewAutomaticDimension
        tableview.register(ListAllUsersTableViewCell.self, forCellReuseIdentifier: userCellReuseIdentifier)
        
        view.addSubview(tableview)
        tableview.translatesAutoresizingMaskIntoConstraints = false
        tableview.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
}


