//
//  PartRepository.swift
//  Inventory
//
//  Created by Mohamed El-Halawani on 2025-02-01.
//

import Foundation

protocol PartRepository: Sendable {
    
    func create(name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part?
    
    func get(id: UUID) async throws -> Part?
    
    func list() async throws -> [Part]
    
    func update(id: UUID, name: String, category: PartCategory, size: Dimensions?, weight: Double?) async throws -> Part?
    
    func delete(id: UUID) async throws -> Bool
    
    func deleteAll() async throws -> Bool
}



class PartRepositoryImpl : PartRepository {
    
    private let database : Database
    
    init(database: Database) {
        self.database = database
    }
    
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
        
        let updatedPart = Part(id: id, name: name, category: category, size: size, weight: weight)
        
        await Database.shared.updatePart()
    }
    
    
    
}
