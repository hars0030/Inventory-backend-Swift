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
    let height: Double
    let width: Double
    let length: Double


}

struct Part{
    let id: UUID
    let name: String
    let category: PartCategory
    let size: Dimensions?
    let weight: Double 
    
    init(id:UUID,name:String,category:PartCategory,size:Dimensions? , weight: Double?) {
        self.id = id
        self.name = name
        self.category = category
        self.size = size
        self.weight = weight ?? 0
    }
}

extension Part  : ResponseEncodable, Decodable, Equatable {}
