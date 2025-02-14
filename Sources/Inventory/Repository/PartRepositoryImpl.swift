//
//  PartRepositoryImpl.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-14.
//

import Foundation



class PartRepositoryImpl : PartRepository {
    
//    private let database : Database
//    
//    init(database: Database) {
//        self.database = database
//    }
    
    func create(name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part? {
         let partWeight = weight ?? 0
        
        let part  = Part(id: UUID(), name: name, category: category, size: size, weight: partWeight)
        
        await  Database.shared.addPart(part)
        
        
            
        return part
    }
    
    
    func get(id: UUID) async throws -> Part? {
        try await Database.shared.getPart(by: id)
    }
    
    func list() async throws -> [Part] {
        await Database.shared.getAllParts()
        
        
    }
    
    func update(id: UUID, name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part? {
        
      let updatedPart =   try await Database.shared.updatePart(Part(id: id, name: name, category: category, size: size, weight: weight))
        
        if let updatedPart {
        return updatedPart
        } else {
            return nil
        }
    }
}

