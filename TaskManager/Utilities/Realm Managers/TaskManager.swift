//
//  TaskManager.swift
//  TaskManager
//
//  Created by Dakota Brown on 9/17/18.
//  Copyright © 2018 Dakota Brown. All rights reserved.
//

import Foundation
import RealmSwift

final class TaskManager {
    
    static let sharedInstance = TaskManager()
    
    let realm = try! Realm()
    
    var tasks: Results<Task>!
    
    let calendar = Calendar.current
}
