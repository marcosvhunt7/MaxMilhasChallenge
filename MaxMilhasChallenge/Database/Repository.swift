import Foundation

final class Repository {

    private let localDataSource: LocalDataSource

    init(localDataSource: LocalDataSource) {
        self.localDataSource = localDataSource
    }

    func getTickets() -> [TicketEntity] {
        return localDataSource.getTickets(from: "São Paulo")!
    }
}
