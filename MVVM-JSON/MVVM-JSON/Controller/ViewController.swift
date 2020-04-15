//
//  ViewController.swift
//  MVVM-JSON
//
//  Created by Puneet Personal on 15.04.20.
//  Copyright © 2020 Puneet Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTableView: UITableView!
    var viewModelUser = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModelUser.vc = self
        viewModelUser.getAllUsersData()
        userTableView.register(UINib(nibName: "UserCell",bundle:nil), forCellReuseIdentifier: "UserCell")
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModelUser.usersArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        let modelUser = viewModelUser.usersArray[indexPath.row]
        if let id = modelUser.id {
            cell?.lblID.text = "\(id)"
        } else {
            cell?.lblID.text = "No ID"
        }
        cell?.lblTitle.text = modelUser.title
        return cell!
        
    }
    
    
}
