//
//  PartRepositoryImpl.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-14.
//

import Foundation



struct PartRepositoryImpl : PartRepository {

    private let database = Database.shared

    
    func create(name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part? {
         let partWeight = weight ?? 0
        let part = Part(id: UUID(), name: name, category: category, size: size, weight: partWeight)
        await database.add(part: part)
                return part
            }
    
    
    func get(id: UUID) async throws -> Part? {
        return try await database.getPart(by: id)
    }
    
    func list() async throws -> [Part] {
        await database.getAllParts()
        
        
    }
    
    //id: UUID, name: String, category: PartCategory, size: Dimensions?, weight: Double?
    
    func update(id: UUID, name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part? {
        let weight = weight ?? 0.0
        let size = size ?? Dimensions(height: 0.0, width: 0.0, length: 0.0)
        
        
        return await database.updatePart(id: id, name: name, category: category, size: size, weight: weight)
      }
    
    func delete(id: UUID) async throws -> Bool {
        return await database.deletePart(id: id)
       }

    
    
    func deleteAll() async throws -> Bool {
        return await database.deleteAllParts()
    }
}

