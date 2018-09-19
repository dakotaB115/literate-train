//
//  User.swift
//  TaskManager
//
//  Created by Dakota Brown on 9/17/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

class User: Object {
    @objc dynamic var userName: String = ""
    @objc dynamic var password: String = ""
    @objc dynamic var loggedIn: Bool = false
}


