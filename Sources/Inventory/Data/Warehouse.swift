//
//  Warehouse.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-07.
//


import Foundation	
import Hummingbird



struct Location : Codable ,Equatable{
    let address: String
    let city: String
    let country: String
}


struct Warehouse {
    let id : UUID
    let name: String
    let location: Location
    let contactNumber: String
    let manager : String?
    
}
                
extension Warehouse: ResponseEncodable, Decodable, Equatable {}


