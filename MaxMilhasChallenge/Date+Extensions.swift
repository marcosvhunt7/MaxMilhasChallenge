import Foundation

extension Date {
    static func parse(_ string: String, format: String, timezone: TimeZone? = TimeZone(secondsFromGMT: 0)) -> Date? {

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format

        if let timezone = timezone {
            dateFormatter.timeZone = timezone
        }

        return dateFormatter.date(from: string)
    }

    public func toString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "pt_BR")
        dateFormatter.dateFormat = format
        dateFormatter.timeZone = TimeZone.init(secondsFromGMT: 0)

        return dateFormatter.string(from: self)
    }
}
