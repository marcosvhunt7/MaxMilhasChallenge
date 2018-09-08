import Foundation

protocol TicketsDetailViewProtocol: class {
    func setPresenter(_ presenter: TicketsDetailPresenterProtocol)

    func setListTickets(_ tickets: [TicketEntity])
}

protocol TicketsDetailPresenterProtocol: class {
    func load()
}

protocol TicketsDetailInteractorProcotol: class {
    func loadTickets(completion: ([TicketEntity]) -> Void)
}

protocol TicketsDetailWireframeProtocol: class {

}
