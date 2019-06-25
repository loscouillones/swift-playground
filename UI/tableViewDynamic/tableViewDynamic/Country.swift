//
//  Country.swift
//  tableViewDynamic
//
//  Created by Nico on 25/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import Foundation

struct Country: CustomStringConvertible, Equatable {
    var description: String {
        return "\(flag) \(name)"
    }
    
    let flag: Character
    let name: String
    
    init(flag: Character, name: String) {
        self.flag = flag
        self.name = name
    }
    
    static func == (cl: Country, cr:Country) -> Bool {
        return cl.name == cr.name && cl.flag == cr.flag
    }
}
