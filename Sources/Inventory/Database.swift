//
//  Database.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-11.
//

import Foundation


actor Database {
    var parts: [Part] = []
    var warehouses: [Warehouse] = []
    
    
    static let shared = Database()

    
    private init() {}
    

    
    func addPart(_ part:Part) {
        parts.append(part)
         
    }
    
    
    
    func getPart (by uuid :UUID) throws -> Part? {
       return parts.first(where: {$0.id == uuid})
        }
    
    func getAllParts () -> [Part] {
        
        return parts
    }
    
//    func updatePart (_ updatedPart:Part) throws -> Part? {
//        if let index = parts.firstIndex(of: {$0.id == updatedPart.id })
//    }
//        
    
    
    
    
    
    
    
    
    
    
}


