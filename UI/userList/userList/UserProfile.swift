//
//  UserProfile.swift
//  userList
//
//  Created by Nico on 25/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import Foundation

struct UserProfile:CustomStringConvertible {
    var description: String {
        return isTrainer ? "\(name) \(lastName) a \(age) ans et est formateur" : "\(name) \(lastName) a \(age) ans et est apprenant"
    }
    
    var name: String
    var lastName: String
    var age: Int
    var isTrainer: Bool
    
    init(name: String, lastName: String, age: Int, isTrainer: Bool) {
        self.name = name
        self.lastName = lastName
        self.age = age
        self.isTrainer = isTrainer
    }
}
