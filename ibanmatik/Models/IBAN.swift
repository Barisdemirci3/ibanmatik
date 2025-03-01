//
//  IBAN.swift
//  ibanmatik
//
//  Created by Barış Demirci on 2.03.2025.
//

import Foundation
import RealmSwift

class IBAN: Object {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var IbanName: String = ""
    @Persisted var BankName: String = ""
    @Persisted var IbanNumber: String = ""
}
