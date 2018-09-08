import Foundation

final class TicketsDetailInteractor: TicketsDetailInteractorProcotol {
    private let repository: Repository
    private let searchParams: SearchParams

    init(repository: Repository, searchParams: SearchParams) {
        self.repository = repository
        self.searchParams = searchParams
    }

    func loadTickets(completion: ([TicketEntity]) -> Void) {
        let tickets = repository.getTicketsWithFilter(searchParams: searchParams)
        completion(tickets)
    }
}
