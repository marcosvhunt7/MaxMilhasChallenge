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

    @objc dynamic var id: String = ""

    override func updateCompoundKey() {
        id = "\(departure):\(destination):\(departureDate):\(returnDate):\(departureAirline):\(returnAirline)"
    }

    override static func primaryKey() -> String {
        return "id"
    }

}
