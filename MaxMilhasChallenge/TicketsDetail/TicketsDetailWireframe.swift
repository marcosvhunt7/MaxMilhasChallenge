import UIKit

final class TicketsDetailWireframe: TicketsDetailWireframeProtocol {

    var controller: UIViewController?

    init(interactor: TicketsDetailInteractorProcotol) {
        controller = UIStoryboard(name: "TicketsDetail", bundle: Bundle.main).instantiateInitialViewController()

        if let view = controller as? UIViewController & TicketsDetailViewProtocol {
            let presenter = TicketsDetailPresenter(view: view, interactor: interactor, wireframe: self)
            view.setPresenter(presenter)
        }
    }

    func showAlert() {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let alert = UIAlertController(title: "Dica", message: "Voce precisa preencher pelo menos um campo :)", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(okAction)
        self.controller?.present(alert, animated: true, completion: nil)
    }
}
