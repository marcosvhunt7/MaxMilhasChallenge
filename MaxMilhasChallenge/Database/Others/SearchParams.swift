import Foundation

struct SearchParams {
    let departure: String?
    let destination: String?
    let departureDate: Date?
    let returnDate: Date?
    let numberOfPassengers: Int

    func getPredicate() -> (String, [Any]) {
        var predicateString: String = ""
        var predicateArray: [String] = []
        var predicateArgs: [Any] = []

        if let departure = self.departure, !(departure).isEmpty {
            predicateArray.append("departure = %@")
            predicateArgs.append(departure)
        }
        if let destination = self.destination, !(destination).isEmpty {
            predicateArray.append("destination = %@")
            predicateArgs.append(destination)
        }
        if let departureDate = self.departureDate {
            predicateArray.append("departureDate = %@")
            predicateArgs.append(departureDate)
        }
        if let returnDate = self.returnDate {
            predicateArray.append("returnDate = %@")
            predicateArgs.append(returnDate)
        }
        if self.numberOfPassengers > 0 {
            predicateArray.append("passengers >= %d")
            predicateArgs.append(numberOfPassengers)
        }

        predicateString = predicateArray.enumerated().reduce("", { (result, current) -> String in
            if current.offset == 0 {
                return result + current.element
            } else {
                return result + " AND " + current.element
            }
        })

        return (predicateString, predicateArgs)
    }
}
