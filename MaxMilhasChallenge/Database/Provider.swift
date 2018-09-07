import Foundation
import RealmSwift

class Provider {

    static var shared = Provider()

    private init() {}

    func reload() {
        Provider.shared = Provider()
    }

    lazy var database: DatabaseManager = {
        var version = 1
        let types: [RealmSwift.Object.Type] = [TicketEntity.self]
        return DatabaseManager.forceInit(name: "\(version).realm", types: types)
    }()
    
    lazy var localDataSource = LocalDataSource(database: self.database.getDatabase())
    
    lazy var repository = Repository(localDataSource: self.localDataSource)
}
