//
//  Task.swift
//  TaskManager
//
//  Created by Dakota Brown on 9/17/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

class Task: Object {
    @objc dynamic var task: String = ""
    @objc dynamic var descrip: String = ""
    @objc dynamic var isDone: Bool = false
    @objc dynamic var CompleteBy: Date = Date()
}
