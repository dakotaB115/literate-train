//
//  UserManager.swift
//  TaskManager
//
//  Created by Dakota Brown on 9/17/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

final class UserManager {
    
    static let sharedInstance = UserManager()
    
    let realm = try! Realm()
    
    var users: Results<User>
    
    private init() {
        users = realm.objects(User.self).sorted(byKeyPath: "Logged in")
    }
    
    func addUser(_ user: User) {
        try! realm.write {
            realm.delete(user)
        }
    }
    
    func getUser(at index: Int) -> User {
        return users[index]
    }
    
    func loginedInOrOut(user: User) {
        try! realm.write {
            user.loggedIn = !user.loggedIn
        }
        
        if user.loggedIn {
            print("Login successful")
        }
    }
}

