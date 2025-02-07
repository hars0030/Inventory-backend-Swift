//
//  File.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-07.
//

import Foundation
import Hummingbird


enum PartCategory {
    case engine
    case transmission
    case brakes
    case body
}

struct Part : ResponseEncodable, Decodable, Equatable {
    let uuid: UUID
    let name: String
    let category: PartCategory
    let size: String
    let weight: Double
}
