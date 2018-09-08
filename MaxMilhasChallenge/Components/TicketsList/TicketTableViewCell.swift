import UIKit

class TicketTableViewCell: UITableViewCell {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var departuretype: UILabel!
    @IBOutlet weak var departureDate: UILabel!
    @IBOutlet weak var departureAirline: UILabel!
    @IBOutlet weak var departureAirplaneCode: UILabel!
    @IBOutlet weak var departureTime: UILabel!
    @IBOutlet weak var departureAirportCode: UILabel!
    @IBOutlet weak var departureTimeTravel: UILabel!
    @IBOutlet weak var departureScale: UILabel!
    @IBOutlet weak var departureArrivalForecast: UILabel!
    @IBOutlet weak var departuredestinationAirportCode: UILabel!

    @IBOutlet weak var returntype: UILabel!
    @IBOutlet weak var returnDate: UILabel!
    @IBOutlet weak var returnAirline: UILabel!
    @IBOutlet weak var returnAirplaneCode: UILabel!
    @IBOutlet weak var returnTime: UILabel!
    @IBOutlet weak var returnAirportCode: UILabel!
    @IBOutlet weak var returnTimeTravel: UILabel!
    @IBOutlet weak var returnScale: UILabel!
    @IBOutlet weak var returnArrivalForecast: UILabel!
    @IBOutlet weak var returnDestinationAirportCode: UILabel!

    @IBOutlet weak var buyButton: UIButton!

    var ticket: TicketEntity?

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureCell() {
        departuretype.text = "IDA"
//        departureDate.text = ticket?.departureDate
        departureAirline.text = ticket?.departureAirline
        departureAirplaneCode.text = ticket?.departureAirplaneCode
//        departureTime.text = ticket?.departureTime
        departureAirportCode.text = ticket?.departureAirportCode
        departureTimeTravel.text = ticket?.departureTimeTravel
        departureScale.text = ticket?.departureScale
        departureArrivalForecast.text = ticket?.departureArrivalForecast
        departuredestinationAirportCode.text = ticket?.departuredestinationAirportCode
        returntype.text = "VOLTA"
//        returnDate.text = ticket?.returnDate
        returnAirline.text = ticket?.returnAirline
        returnAirplaneCode.text = ticket?.returnAirplaneCode
//        returnTime.text = ticket?.returnTime
        returnAirportCode.text = ticket?.returnAirportCode
        returnTimeTravel.text = ticket?.returnTimeTravel
        returnScale.text = ticket?.returnScale
        returnArrivalForecast.text = ticket?.returnArrivalForecast
        returnDestinationAirportCode.text = ticket?.returnDestinationAirportCode

        buyButton.setTitle(String.init(format: "Comprar R$ %.2f", ticket?.price ?? 0), for: UIControlState.normal)
    }
}
