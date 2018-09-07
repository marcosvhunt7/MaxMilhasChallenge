import Foundation
import RealmSwift

struct DatabaseManager {

    static let schemaVersion: UInt64 = 1

    private let realm: Realm

    init(name: String = "default.realm", types: [Object.Type] = [], encryptionKey: Data? = nil) throws {

        var config = Realm.Configuration(
            schemaVersion: DatabaseManager.schemaVersion,
            objectTypes: types
        )

        if let key = encryptionKey {
            config.encryptionKey = key
        }

        if let fileURL = Realm.Configuration.defaultConfiguration.fileURL?
            .deletingLastPathComponent().appendingPathComponent(name) {
            config.fileURL = fileURL
        }

        Realm.Configuration.defaultConfiguration = config

        self.realm = try Realm()
    }

    func getDatabase() -> Realm {
        return self.realm
    }

    static func forceInit(name: String = "default.realm", types: [Object.Type] = [], encryptionKey: Data? = nil) -> DatabaseManager {
        // swiftlint:disable:next force_try
        return try! DatabaseManager(name: name, types: types, encryptionKey: encryptionKey)
    }
}
