import Foundation

final class HomeInteractor: HomeInteractorProcotol {

    private let repository: Repository

    init(repository: Repository) {
        self.repository = repository
    }

    func organizeParams(departure: String?, destination: String?, departureDate: String?, returnDate: String?, numberOfPassengers: String?) -> SearchParams {

        var departDate: Date?
        if let dateString = departureDate {
            departDate = Date.parse(dateString, format: "dd/MM/yyyy")
        }

        var rtnDate: Date?
        if let dateString = returnDate {
            rtnDate = Date.parse(dateString, format: "dd/MM/yyyy")
        }

        var passengers = 0
        if let number = numberOfPassengers {
            passengers = Int(number) ?? 0
        }

        return SearchParams(departure: departure, destination: destination, departureDate: departDate, returnDate: rtnDate, numberOfPassengers: passengers)
    }
}
