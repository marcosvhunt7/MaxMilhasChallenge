import UIKit

final class TicketsDetailViewController: UIViewController, TicketsDetailViewProtocol {
    private var presenter: TicketsDetailPresenterProtocol!
    private var listTicketsViewController: TicketsTableViewController?

    func setPresenter(_ presenter: TicketsDetailPresenterProtocol) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
}
