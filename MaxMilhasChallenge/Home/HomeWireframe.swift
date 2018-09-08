import UIKit

final class HomeWireframe: HomeWireframeProtocol {

    var controller: UIViewController?

    init(interactor: HomeInteractorProcotol) {
        controller = UIStoryboard(name: "Home", bundle: Bundle.main).instantiateInitialViewController()

        if let navigationController = controller as? UINavigationController,
            let view = navigationController.viewControllers.first as? UIViewController & HomeViewProtocol {
            let presenter = HomePresenter(view: view, interactor: interactor, wireframe: self)
            view.setPresenter(presenter)
        }
    }

    func search(params: SearchParams) {
        print(params)
    }

    func showEmptyAlert() {
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        let alert = UIAlertController(title: "Dica", message: "Voce precisa preencher pelo menos um campo :)", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(okAction)
        self.controller?.present(alert, animated: true, completion: nil)
    }
}
