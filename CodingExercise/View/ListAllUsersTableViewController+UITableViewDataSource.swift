//
//  ListAllUsersTableViewController+UITableViewDataSource.swift
//  CodingExercise
//
//  Created by Tiago Mendes on 14/11/2017.
//  Copyright © 2017 mendes. All rights reserved.
//

import Foundation
import UIKit

extension ListAllUsersTableViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: userCellReuseIdentifier, for: indexPath) as! ListAllUsersTableViewCell
        let user = userList[(indexPath as NSIndexPath).row]
        cell.nameLabel.text = user.name
        cell.emailLabel.text = user.email
        cell.detailLabel.text = user.expanded ? user.infos : ""
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let content = userList[indexPath.row]
        content.expanded = !content.expanded
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}
