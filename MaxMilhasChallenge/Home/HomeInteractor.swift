import Foundation

final class HomeInteractor: HomeInteractorProcotol {

    private let repository: Repository

    init(repository: Repository) {
        self.repository = repository
    }

    
}
