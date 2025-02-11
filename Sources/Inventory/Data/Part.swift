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

struct Dimensions :Codable,Equatable {
    let length: Double
    let width: Double
    let height: Double
}



struct Part{
    let uuid: UUID
    let name: String
    let category: PartCategory
    let size: Dimensions?
    let weight: Double
}

extension Part  : ResponseEncodable, Decodable, Equatable {}
