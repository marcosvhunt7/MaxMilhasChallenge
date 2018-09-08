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
    func getAllTickets() -> [TicketEntity] {
        return database
            .objects(TicketEntity.self)
            .sorted(byKeyPath: "departureDate")
            .map { $0 }
    }

    func getTickets(_ searchParams: SearchParams) -> [TicketEntity] {
        let (predicateString, predicateArgs) = searchParams.getPredicate()

        if predicateString.isEmpty {
            return getAllTickets()
        }

        let predicate = NSPredicate(format: predicateString, argumentArray: predicateArgs)
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
