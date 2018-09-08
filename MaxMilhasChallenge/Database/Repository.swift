import Foundation

final class Repository {

    private let localDataSource: LocalDataSource

    init(localDataSource: LocalDataSource) {
        self.localDataSource = localDataSource
    }

    func getAllTickets() -> [TicketEntity] {
        return localDataSource.getAllTickets()
    }

    func getTicketsWithFilter(searchParams: SearchParams) -> [TicketEntity] {
        return localDataSource.getTickets(searchParams)
    }
}
