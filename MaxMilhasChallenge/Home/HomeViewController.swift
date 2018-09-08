import UIKit

final class HomeViewController: UIViewController, HomeViewProtocol {

    @IBOutlet weak var departureTextField: UITextField! {
        didSet {
            departureTextField.tintColor = Theme.Colors.primaryColor
            departureTextField.setIcon(UIImage(named: "pin.png")!)
            departureTextField.setPaddingLeft(size: 15)
        }
    }

    @IBOutlet weak var destinationTextField: UITextField! {
        didSet {
            destinationTextField.tintColor = Theme.Colors.primaryColor
            destinationTextField.setIcon(UIImage(named: "pin.png")!)
            destinationTextField.setPaddingLeft(size: 15)
        }
    }

    @IBOutlet weak var departureDateTextField: UITextField! {
        didSet {
            departureDateTextField.tintColor = Theme.Colors.primaryColor
            departureDateTextField.setIcon(UIImage(named: "calendario.png")!)
            departureDateTextField.setPaddingLeft(size: 15)
        }
    }

    @IBOutlet weak var returnDateTextField: UITextField! {
        didSet {
            returnDateTextField.tintColor = Theme.Colors.primaryColor
            returnDateTextField.setIcon(UIImage(named: "calendario.png")!)
            returnDateTextField.setPaddingLeft(size: 15)
        }
    }

    @IBOutlet weak var numberOfPassengersTextField: UITextField! {
        didSet {
            numberOfPassengersTextField.tintColor = Theme.Colors.primaryColor
            numberOfPassengersTextField.setIcon(UIImage(named: "passageiros.png")!)
            numberOfPassengersTextField.setPaddingLeft(size: 15)
        }
    }

    @IBOutlet weak var searchButton: UIButton! {
        didSet {
            searchButton.tintColor = UIColor.white
            searchButton.backgroundColor = Theme.Colors.primaryColor        }
    }

    private var presenter: HomePresenterProtocol!

    func setPresenter(_ presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func depurateDateAction(_ sender: UITextField) {
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(handleDepurateDatePicker(sender:)), for: .valueChanged)
    }

    @objc func handleDepurateDatePicker(sender: UIDatePicker) {
        departureDateTextField.text = sender.date.toString(format: "dd/MM/yyyy")
    }

    @IBAction func returnDateAction(_ sender: UITextField) {
        let datePickerView = UIDatePicker()
        datePickerView.datePickerMode = .date
        sender.inputView = datePickerView
        datePickerView.addTarget(self, action: #selector(handleReturnDatePicker(sender:)), for: .valueChanged)
    }

    @objc func handleReturnDatePicker(sender: UIDatePicker) {
        returnDateTextField.text = sender.date.toString(format: "dd/MM/yyyy")
    }

    @IBAction func searchAction(_ sender: UIButton) {
        presenter.search(departure: departureTextField.text, destination: destinationTextField.text, departureDate: departureDateTextField.text, returnDate: returnDateTextField.text, numberOfPassengers: numberOfPassengersTextField.text)
    }
}
