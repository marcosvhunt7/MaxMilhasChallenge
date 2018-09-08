import Foundation

class TicketEntity: BaseEntity {

    @objc dynamic var departure: String = "" {
        didSet {
            updateCompoundKey()
        }
    }

    @objc dynamic var destination: String = "" {
        didSet {
            updateCompoundKey()
        }
    }

    @objc dynamic var departureDate: Date = Date() {
        didSet {
            updateCompoundKey()
        }
    }

    @objc dynamic var returnDate: Date = Date() {
        didSet {
            updateCompoundKey()
        }
    }

    @objc dynamic var departureAirline: String = "" {
        didSet {
            updateCompoundKey()
        }
    }

    @objc dynamic var returnAirline: String = "" {
        didSet {
            updateCompoundKey()
        }
    }

    @objc dynamic var departureAirplaneCode: String = ""
    @objc dynamic var departureAirportCode: String = ""
    @objc dynamic var departureTimeTravel: String = ""
    @objc dynamic var departureScale: String = ""
    @objc dynamic var departureArrivalForecast: String = ""
    @objc dynamic var departuredestinationAirportCode: String = ""

    @objc dynamic var returnAirplaneCode: String = ""
    @objc dynamic var returnAirportCode: String = ""
    @objc dynamic var returnTimeTravel: String = ""
    @objc dynamic var returnScale: String = ""
    @objc dynamic var returnArrivalForecast: String = ""
    @objc dynamic var returnDestinationAirportCode: String = ""

    @objc dynamic var passengers: Int = 0

    @objc dynamic var price: Double = 0.0

    @objc dynamic var id: String = ""

    override func updateCompoundKey() {
        id = "\(departure):\(destination):\(departureDate):\(returnDate):\(departureAirline):\(returnAirline)"
    }

    override static func primaryKey() -> String {
        return "id"
    }

}
