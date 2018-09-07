import Foundation

protocol HomeViewProtocol: class {
    func setPresenter(_ presenter: HomePresenterProtocol)
}

protocol HomePresenterProtocol: class {
    func search(ticket: String)
}

protocol HomeInteractorProcotol: class {

}

protocol HomeWireframeProtocol: class {
    func search(ticket: String)
}
