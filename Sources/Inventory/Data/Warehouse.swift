//
//  Warehouse.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-07.
//


import Foundation

struct Location {
    let address: String
    let city: String
    let country: String
}


struct Warehouse : ResponseEncodable, Decodable,  Equatable{
    let id : UUID
    let name: String
    let location: Location
    let contactNumber: String
    
}
                
