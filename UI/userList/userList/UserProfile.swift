//
//  UserProfile.swift
//  userList
//
//  Created by Nico on 25/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import Foundation
import UIKit

struct UserProfile:CustomStringConvertible, Equatable {
    var description: String {
        return isTrainer ? "\(name) \(lastName) a \(age) ans et est formateur" : "\(name) \(lastName) a \(age) ans et est apprenant"
    }
    
    var name: String
    var lastName: String
    var email: String
    var age: Int
    var isTrainer: Bool
    var avatar: UIImage?
    
    init(name: String, lastName: String, age: Int, isTrainer: Bool, email: String = "") {
        self.name = name
        self.lastName = lastName
        self.age = age
        self.isTrainer = isTrainer
        self.email = email
    }
    
    static func ==(lu: UserProfile, ru: UserProfile) -> Bool {
        return lu.name == ru.name && lu.lastName == ru.lastName
    }
}
