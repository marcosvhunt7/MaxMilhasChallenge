import Foundation

protocol HomeViewProtocol: class {
    func setPresenter(_ presenter: HomePresenterProtocol)
}

protocol HomePresenterProtocol: class {
    func search(departure: String?, destination: String?, departureDate: String?, returnDate: String?, numberOfPassengers: String?)
}

protocol HomeInteractorProcotol: class {
    func organizeParams(departure: String?, destination: String?, departureDate: String?, returnDate: String?, numberOfPassengers: String?) -> SearchParams
}

protocol HomeWireframeProtocol: class {
    func search(params: SearchParams)
    func showEmptyAlert()
}
