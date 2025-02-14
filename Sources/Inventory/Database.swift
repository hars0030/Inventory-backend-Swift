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
    

    
    func add(element: Part) {
           parts.append(element)
       }

    
    
    
    func getPart (by id :UUID) throws -> Part? {
       return parts.first(where: {$0.id == id})
        }
    
    func getAllParts () -> [Part] {
        
        return parts
    }
    

    
    func updatePart(id: UUID, name: String, category: PartCategory, size: Dimensions, weight: Double) -> Part? {
         if let index = parts.firstIndex(where: { $0.id == id }) {
             let updatedPart = Part(id: id, name: name, category: category, size: size, weight: weight)
             parts[index] = updatedPart
             return updatedPart
         }
         return nil
     }
    
    func deletePart(id: UUID) -> Bool {
         if let index = parts.firstIndex(where: { $0.id == id }) {
             parts.remove(at: index)
             return true
         }
         return false
     }
    
    func deleteAllParts() -> Bool {
           parts.removeAll()
           return true
       }
    
    func add(element: Warehouse) {
            warehouses.append(element)
        }
    
    func getWarehouse(by id: UUID) -> Warehouse? {
            return warehouses.first { $0.id == id }
        }
    
    
    func getAllWarehouses() -> [Warehouse] {
           return warehouses
       }
    
    
    func updateWarehouse(id: UUID, name: String, location: Location, contactNumber: String, manager: String?) -> Warehouse? {
            if let index = warehouses.firstIndex(where: { $0.id == id }) {
                let updatedWarehouse = Warehouse(id: id, name: name, location: location, contactNumber: contactNumber, manager: manager)
                warehouses[index] = updatedWarehouse
                return updatedWarehouse
            }
            return nil
        }
    
    func deleteWarehouse(id: UUID) -> Bool {
           if let index = warehouses.firstIndex(where: { $0.id == id }) {
               warehouses.remove(at: index)
               return true
           }
           return false
       }

       func deleteAllWarehouses() -> Bool {
           warehouses.removeAll()
           return true
       }
    
}


