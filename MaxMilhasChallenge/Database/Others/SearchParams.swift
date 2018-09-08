import Foundation

struct SearchParams {
    let departure: String?
    let destination: String?
    let departureDate: Date?
    let returnDate: Date?
    let numberOfPassengers: Int

    func getPredicate() -> (String, [Any]) {
        var predicateString: String = ""
        var predicateArgs: [Any] = []
        if let departure = self.departure, !(departure).isEmpty {
            predicateString += "departure = %@"
            predicateArgs.append(departure)
        }
        if let destination = self.destination, !(destination).isEmpty {
            predicateString += "destination = %@"
            predicateArgs.append(destination)
        }
        if let departureDate = self.departureDate {
            predicateString += "departureDate = %@"
            predicateArgs.append(departureDate)
        }
        if let returnDate = self.returnDate {
            predicateString += "returnDate = %@"
            predicateArgs.append(returnDate)
        }
        if self.numberOfPassengers > 0 {
            predicateString += "passengers >= %d"
            predicateArgs.append(numberOfPassengers)
        }

        return (predicateString, predicateArgs)
    }
}
