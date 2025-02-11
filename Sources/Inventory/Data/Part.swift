//
//  File.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-07.
//

import Foundation
import Hummingbird

// public typealias Codable = Decodable & Encodable
enum PartCategory : Codable {
    case engine
    case transmission
    case brakes
    case body
}

struct Part{
    let uuid: UUID
    let name: String
    let category: PartCategory
    let size: String
    let weight: Double
}

extension Part  : ResponseEncodable, Decodable, Equatable { }
