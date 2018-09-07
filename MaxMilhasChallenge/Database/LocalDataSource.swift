import Foundation
import RealmSwift

final class LocalDataSource {

    private let database: Realm

    init(database: Realm) {
        self.database = database
    }

    private func save<T: BaseEntity>(entities: [T], update: Bool = false) throws {
        try database.write {
            database.add(entities, update: update)
        }
    }
}

// MARK: - TickerEntity
extension LocalDataSource {
    func getTickets(from destination: String) -> [TicketEntity]? {
        let predicate = NSPredicate(format: "destination = %@", destination)
        return database
            .objects(TicketEntity.self)
            .filter(predicate)
            .sorted(byKeyPath: "departureDate")
            .map { $0 }
    }

    func saveTickets(_ tickets: [TicketEntity]) throws {
        try save(entities: tickets, update: true)
    }
}
