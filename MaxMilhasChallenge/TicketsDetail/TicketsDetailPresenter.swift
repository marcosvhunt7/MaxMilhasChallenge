import Foundation

final class TicketsDetailPresenter: TicketsDetailPresenterProtocol {

    weak var view: TicketsDetailViewProtocol?
    var interactor: TicketsDetailInteractorProcotol
    var wireframe: TicketsDetailWireframeProtocol

    init(view: TicketsDetailViewProtocol, interactor: TicketsDetailInteractorProcotol, wireframe: TicketsDetailWireframeProtocol) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }

    func load() {
        interactor.loadTickets { (tickets) in
            view?.setListTickets(tickets)
        }
    }
}
