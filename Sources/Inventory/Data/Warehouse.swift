//
//  Warehouse.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-07.
//


import Foundation	
import Hummingbird



struct Location : Codable ,Equatable{
    let city: String
    let country: String
    let address: String
}


struct Warehouse {
    let id : UUID
    let name: String
    let location: Location
    let contactNumber: String
    let manager : String?
    
}
                
extension Warehouse: ResponseEncodable, Decodable, Equatable {}


