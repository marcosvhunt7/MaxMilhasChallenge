import UIKit

final class TicketsDetailViewController: UIViewController, TicketsDetailViewProtocol {

    @IBOutlet weak var filterButton: UIButton! {
        didSet {
            filterButton.backgroundColor = .clear
            filterButton.layer.borderWidth = 1
            filterButton.layer.borderColor = Theme.Colors.silverColor.cgColor
        }
    }
    @IBOutlet weak var sortButton: UIButton! {
        didSet {
            sortButton.backgroundColor = .clear
            sortButton.layer.borderWidth = 1
            sortButton.layer.borderColor = Theme.Colors.silverColor.cgColor
        }
    }

    private var presenter: TicketsDetailPresenterProtocol!
    private var listTicketsViewController: TicketsTableViewController?

    func setPresenter(_ presenter: TicketsDetailPresenterProtocol) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.backBarButtonItem?.title = "Olar"

        presenter?.load()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TicketsTableViewController" {
            listTicketsViewController = segue.destination as? TicketsTableViewController
        }
    }

    func setListTickets(_ tickets: [TicketEntity]) {
        listTicketsViewController?.present(tickets: tickets)
    }

    @IBAction func filterTapped(_ sender: UIButton) {
        print("Filter tapped")
    }

    @IBAction func sortTapped(_ sender: UIButton) {
        print("Sort tapped")
    }

}
