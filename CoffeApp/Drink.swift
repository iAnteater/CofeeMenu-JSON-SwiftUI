//
//  Drink.swift
//  CoffeApp
//
//  Created by Osadchuk Taras on 15.03.2021.
//

import Foundation

struct Drink: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var imageName: String
    var category: Category
    var description: String
    
    enum Category: String, CaseIterable, Codable, Hashable{
        case hot = "hot"
        case cold = "cold"
    }
}
