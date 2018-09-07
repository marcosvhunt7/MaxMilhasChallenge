import Foundation

final class HomePresenter: HomePresenterProtocol {

    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorProcotol
    var wireframe: HomeWireframeProtocol

    init(view: HomeViewProtocol, interactor: HomeInteractorProcotol, wireframe: HomeWireframeProtocol) {
        self.view = view
        self.interactor = interactor
        self.wireframe = wireframe
    }

    func search(ticket: String) {
        wireframe.search(ticket: ticket)
    }
}
