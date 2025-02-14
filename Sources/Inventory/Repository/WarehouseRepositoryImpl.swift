//
//  WarehouseRepositoryImpl.swift
//  Inventory
//
//  Created by HARSH KUMAR on 2025-02-14.
//


import Foundation

struct WarehouseRepositoryImpl: WarehouseRepository {
    private let database = Database.shared

    func create(name: String, location: Location, contact: String, manager: String?) async throws -> Warehouse? {
        let warehouse = Warehouse(id: UUID(), name: name, location: location, contactNumber: contact, manager: manager)
        await database.add(warehouse: warehouse)
        return warehouse
    }

    func get(id: UUID) async throws -> Warehouse? {
        return await database.getWarehouse(by: id)
    }

    func list() async throws -> [Warehouse] {
        return await database.getAllWarehouses()
    }

    func update(id: UUID, name: String, location: Location, contact: String, manager: String?) async throws -> Warehouse? {
        return await database.updateWarehouse(id: id, name: name, location: location, contactNumber: contact, manager: manager)
    }

    func delete(id: UUID) async throws -> Bool {
        return await database.deleteWarehouse(id: id)
    }

    func deleteAll() async throws -> Bool {
        return await database.deleteAllWarehouses()
    }
}
