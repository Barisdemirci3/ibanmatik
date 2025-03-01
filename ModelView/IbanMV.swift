import Foundation
import RealmSwift

class IbanMV: ObservableObject {
    private var realm: Realm
    @Published var ibans: [IBAN] = []
    init() {
        do {
            realm = try Realm()
        } catch {
            fatalError("Realm initialization failed: \(error)")
        }
    }
    func fetchIbans() {
        let results = realm.objects(IBAN.self)
        ibans = Array(results)
    }
    
}
