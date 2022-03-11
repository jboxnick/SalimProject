//
//  Quote.swift
//  SalimProject
//
//  Created by Julian on 11.03.22.
//

import Foundation

struct Quote {
    
    let category: Category
    let text: String
}

enum Category {
    
    case all
    case love
    case problem
    case work
}
