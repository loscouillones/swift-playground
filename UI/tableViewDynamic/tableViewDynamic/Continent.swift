//
//  Continent.swift
//  tableViewDynamic
//
//  Created by Nico on 25/06/2019.
//  Copyright © 2019 Nico. All rights reserved.
//

import Foundation

struct Continent {
    var countries: Array<Country> = []
    var name:String

    var count: Int {
        return countries.count
    }
    
    init(name: String, countries: Array<Country>) {
        self.countries = countries
        self.name = name
    }
    
    mutating func addCountry(country: Country) {
        if (!self.countries.contains(country)) {
            self.countries.append(country)
        }
    }
}
