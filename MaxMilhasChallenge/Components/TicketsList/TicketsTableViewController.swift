import UIKit

private let reuseIdentifier = "TicketTableViewCell"

class TicketsTableViewController: UITableViewController {

    var tickets: [TicketEntity] = []

    func present(tickets: [TicketEntity]) {
        self.tickets = tickets
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UINib(nibName: reuseIdentifier, bundle: nil), forCellReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.tickets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? TicketTableViewCell

        cell?.ticket = tickets[indexPath.row]
        cell?.configureCell()
        return cell!
    }
}
