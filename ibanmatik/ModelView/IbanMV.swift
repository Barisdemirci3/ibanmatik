import Foundation
import RealmSwift

class IbanMV: ObservableObject {
    private var realm: Realm
    @Published var ibans: [iban] = []
    init() {
        do {
            realm = try Realm()
        } catch {
            fatalError("Realm başlatılırken bir hata oluştu: \(error)")
        }
    }
    func fetchIbans() {
        let results = realm.objects(iban.self)
        ibans = Array(results)
    }
    func addIban(_ iban: iban) {
        do{
            try realm.write {
                realm.add(iban)
            }
        }catch{
            print("Iban eklenemedi: \(error.localizedDescription)")
        }
    }
    func deleteIban(_ iban: iban) {
        do{
            try realm.write {
                realm.delete(iban)
            }
        }catch{
            print("Iban silinemedi: \(error.localizedDescription)")
        }
        
    }

}
