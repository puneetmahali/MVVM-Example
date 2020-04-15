//
//  UserViewModel.swift
//  MVVM-JSON
//
//  Created by Puneet Personal on 15.04.20.
//  Copyright © 2020 Puneet Personal. All rights reserved.
//

import UIKit

class UserViewModel {
    var usersArray = [UserModel]()
    weak var vc : ViewController?
    
    let mainURL = "https://jsonplaceholder.typicode.com/todos/"
    
    //MARK: Using URLSession
    func getAllUsersData() {
        URLSession.shared.dataTask(with: URL(string: mainURL)!) { (data, response, error)
            in
            if error == nil {
                if let data = data {
                    do {
                        let userResponse = try JSONDecoder().decode([UserModel].self, from: data)
                        self.usersArray.append(contentsOf: userResponse)
                        DispatchQueue.main.async {
                            self.vc?.userTableView.reloadData()
                        }
                    }catch let err {
                        print(err.localizedDescription)
                    }
                }
            } else {
                print(error?.localizedDescription as Any)
            }
            
        }.resume()
    }
    
}
