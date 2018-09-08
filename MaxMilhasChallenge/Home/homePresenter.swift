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

    func search(departure: String?, destination: String?, departureDate: String?, returnDate: String?, numberOfPassengers: String?) {
        if (departure ?? "").isEmpty &&
            (destination ?? "").isEmpty &&
            (departureDate ?? "").isEmpty &&
            (returnDate ?? "").isEmpty &&
            (numberOfPassengers ?? "").isEmpty {
            wireframe.showEmptyAlert()
        } else {
            let searchParams = interactor.organizeParams(departure: departure, destination: destination, departureDate: departureDate, returnDate: returnDate, numberOfPassengers: numberOfPassengers)
            wireframe.search(params: searchParams)
        }
    }
}
