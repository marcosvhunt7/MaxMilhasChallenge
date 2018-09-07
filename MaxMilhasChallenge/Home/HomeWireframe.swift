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
    
    func search(ticket: String) {
        print("ticket")
    }
//
//    func selectedExposure(exposures: [Exposure]) {
//        self.controller?.dismiss(animated: true, completion: {
//            self.selectedExposureCompletion(exposures)
//        })
//    }
//
//    func selectLocale(completion: @escaping (Bool) -> Void) {
//        let selectLocaleInteractor = SelectLocaleInteractor(repository: Provider.shared.repository)
//        if let selectLocaleViewController = SelectLocaleWireframe(interactor: selectLocaleInteractor, completion: completion).controller {
//            selectLocaleViewController.modalPresentationStyle = .overCurrentContext
//            controller?.present(selectLocaleViewController, animated: true, completion: nil)
//        }
//    }
}
