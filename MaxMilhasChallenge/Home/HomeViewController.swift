import UIKit

final class HomeViewController: UIViewController, HomeViewProtocol {

    @IBOutlet weak var doneButton: UIBarButtonItem!
    
    private var presenter: HomePresenterProtocol!

    func setPresenter(_ presenter: HomePresenterProtocol) {
        self.presenter = presenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func doneAction(_ sender: UIBarButtonItem) {
        presenter.search(ticket: "Eita")
    }
}
